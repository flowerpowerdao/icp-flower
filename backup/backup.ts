import fs from "fs";
import path from "path";
import minimist from "minimist";
import { Principal } from "@dfinity/principal";

import { getActor } from "./actor";
import {
  StableChunk__1,
  StableChunk__2,
  StableChunk__3,
  StableChunk__4,
  StableChunk__6,
} from "../declarations/main/staging.did";

let argv = minimist(process.argv.slice(2));
let network = argv.network || "local";
let file =
  argv.file ||
  new Date()
    .toISOString()
    .replaceAll(":", "-")
    .replace("T", "_")
    .replace("Z", "")
    .slice(0, -4) + ".json";
let chunkSize = argv["chunk-size"] ? BigInt(argv["chunk-size"]) : 5000n;
let pretty = network == "local";
let canisterId = argv["canister-id"];

if (!canisterId) {
  throw new Error("Missing --canister-id argument");
}

let mainActor = getActor(network, canisterId);

export let backup = async ({ network, file, chunkSize }) => {
  console.log(`Network: ${network}`);
  console.log(`Chunk size: ${chunkSize}`);
  console.log(`Backup file: ${file}`);

  let chunkCount = await mainActor.getChunkCount(chunkSize);

  console.log(`Total chunks: ${chunkCount}`);

  let chunks = [await mainActor.backupChunk(chunkSize, BigInt(0))] as {
    v2: {
      marketplace: StableChunk__3;
      assets: StableChunk__1;
      sale: StableChunk__4;
      disburser: StableChunk__2;
      tokens: StableChunk__6;
    };
  }[];
  for (let i = 1; i < chunkCount; i++) {
    console.log(`Loading chunk ${i + 1}`);
    let chunk = (await mainActor.backupChunk(chunkSize, BigInt(i))) as {
      v2: {
        marketplace: StableChunk__3;
        assets: StableChunk__1;
        sale: StableChunk__4;
        disburser: StableChunk__2;
        tokens: StableChunk__6;
      };
    };
    if ("v3_chunk" in chunk.v2.assets[0] && "v3" in chunks[0].v2.assets[0]) {
      chunks[0].v2.assets[0].v3.assetsChunk.push(
        ...chunk.v2.assets[0].v3_chunk.assetsChunk
      );
    }
  }

  // for every owner, sort their tokens
  chunks[0].v2.tokens[0].v1.owners.forEach((owner) => {
    owner[1].sort((a, b) => a - b);
  });
  // sort owners by address (first element in array)
  chunks[0].v2.tokens[0].v1.owners.sort((a, b) => {
    if (a[0] < b[0]) {
      return -1;
    } else if (a[0] > b[0]) {
      return 1;
    } else {
      return 0;
    }
  });

  // sort token metadata by token id
  chunks[0].v2.tokens[0].v1.tokenMetadata.sort((a, b) => a[0] - b[0]);

  // sort registry by token id
  // chunks[0].v2.tokens[0].v1.registry.sort((a, b) => a[0] - b[0]);

  // sort listings by token id
  if ("v2" in chunks[0].v2.marketplace[0]) {
    chunks[0].v2.marketplace[0].v2.tokenListing.sort((a, b) => a[0] - b[0]);
  }

  fs.mkdirSync(path.resolve("backup/data/"), { recursive: true });
  fs.writeFileSync(
    `backup/data/${file}`,
    JSON.stringify(
      chunks,
      (_, val) => {
        if (val instanceof Uint8Array) {
          return Array.from(val);
        } else if (val instanceof Uint32Array) {
          return Array.from(val);
        } else if (typeof val === "bigint") {
          return `###bigint:${String(val)}`;
        } else if (val instanceof Principal) {
          return `###principal:${val.toText()}`;
        } else {
          return val;
        }
      },
      pretty && "  "
    )
  );

  console.log(`Backup successfully saved to backup/data/${file}`);
};

backup({ network, file, chunkSize });
