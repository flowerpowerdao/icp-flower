import Time "mo:base/Time";
import ExtCore "../toniq-labs/ext/Core";

module {
  public let isLocal = true; // change to false on production build
  public let collectionName = "Pineapple Punks";
  public let placeholderContentLength = "1053832";
  public let teamAddress = "c6650430117d586f5286a570e61f1fc987a4d2c4f75dad4d9ebfd0ad27e62485";
  public let ecscrowDelay: Time.Time = 120000000000; // 120 seconds
  public let teamRoyaltyAddress : ExtCore.AccountIdentifier = teamAddress;
  public let collectionSize : Nat32 = 7777;
  public let salesFees : [(ExtCore.AccountIdentifier, Nat64)] = [
    (teamAddress, 7500), //Royalty Fee 
    ("99ba739458e3db5b41c304d054d9c6e28639409e866b0f92258814b44dd1876a", 1000), //Entrepot Fee 
  ];

  // prices
  public let ethFlowerWhitelistPrice : Nat64 =   350000000;
  public let modclubWhitelistPrice : Nat64 =     500000000;
  public let salePrice : Nat64 =                 700000000;

  public let publicSaleStart : Time.Time = 4105108800000000000; //Start of first purchase (WL or other)
  public let whitelistTime : Time.Time = 4105108800000000000; //Period for WL only discount. Set to publicSaleStart for no exclusive period
  public let marketDelay : Time.Time = 172800000000000; //How long to delay market opening (2 days after whitelist sale started or when sold out)

  public let whitelistOneTimeOnly : Bool = true; //Whitelist addresses are removed after purchase
  public let whitelistDiscountLimited : Bool = true; //If the whitelist discount is limited to the whitelist period only. If no whitelist period this is ignored

  // Ethflower Whitelist
  public let ethFlowerWhitelist: [ExtCore.AccountIdentifier] = ["8228d9dac5020366799d1b72557d52329ce4178b4fc22b739be1dcd1de459e12","76eb2b7dc96cff9f30389a3f22d39da95eeb9693efb87fa86220a6554c94bc17","0b5fb33626733752c53dbc6af38ef0748003b1bac201e834f1cf5b54b8cd24ac","a9e8b0a36d5d5a54a9c91b844fbe522ae54558a1b32e13279cec2091484e18b4","4cd0a3b0b7325156700aa42ea09b1f296734db277230f7953400d04d5d224916","cc06343c46fa056f18e2e7c974c19a5bfbb6bacdf075b9890d51820dc9bf8e8e","34d1d28e9f2995d2088ae99e65a8d1d2debe67708b9bba759a1c163796dd477f","9727133401aff72eb43c37878c09151e79e2e654c8a88bc9d2e27b134b802dd6","af8b19978155ee0408c031ea9fb74d8b59e0203c576a1945a95a4c1d9def8465","ee05ea615db719200ce631cfc5fabbf71356ad597dc6fda1fb81455f4449f034","82a5e896d087d248c3a15288f076da5ee290df9472191f703340e809d4e8857f","4c405828895e3fd2906bebf517b39bd1f2c025f97f64b33724b8bab779219ef1","f1de47b557450665e2c4f8b04c20c3d564c994e3b3b1b0e211c144af877c1e1a","d6281a3f085df638e6e0f379bc3041bd553f4d5172d72b0011078746a9cb4826","41d3937ac4c7f681be2e81f843e1405caf107804e3de4406458380829c161aec","91c5d411bafb655df40b6b2b8aa05d46d10f424d16feb55016a2830f278a10e2","30a1aa839fdc75f25db995fc32f6805e99375bb678fed055568268a2d8d132ea","55f6eda35a23240e2cade0728ca5330dff814916ac5d4c46ed669de2a48c7192","f41fb2c684468b84428487027ac967fdc05ea9e9325a954f6ae5c45d56ae171b","4302598a305eed558855bd7d25bab36afbf5d2ed6618d25bbde6c35c30ec99d7","7911177fbde067b01dbe319b3b84ec32010378d8a4adb173a92d84c6f635ed08","92e79165f6abf342ccc5b8577bc3670bfdcb5a8a7a2cecaaad4e2d4379b34914","0cbcbc3db3c50da49870fe4c629484ee2162d608db18e6c35581260db1e777c6","7f579d062cafd0e1f8cb932761a4de2935965fecc7deb806ff785e6d112ff4ec","974c9757f09fda7d0c21a0d848eb97e777d25b6767bd503641656251dd6a6b75","52b903b3f6a1f3966b0d0c751a7dd125e57cd51410f359e37fc0accbf2c5df45","e1db21c14f9fa4764ed3a3d87299a8696a9a6fac4c242f56d42a13bb22704529","033a211434af2aaf37958798be439ba3bce0f9655f34b01959c67a14f9208cb2","990aa96162ccc220bf44a6a1a5aa41716a049065907e6c4cf7c6a72190ebb9d2","99b0226b163e318ecf5168e7fc6e71c0545d53278188d1f8794deea4a90cf3ee","74c6e9ec1acac2edfd3902ec689eff17f9ee2edf01662f0fda8955cd34dc453d","b123c9ea5a3410a3e916c11f7c3709c462aa0b0de32283ea3b2a3a5e456b6a64","f58dc8f7b7b3ee4e33854894c9c2e06085505ebc577be4004d97e5dbce2ee56f","e777f0a0656aa1db7a7b920eff61f1ec58d959057c9afba6263d52bd600bb842","71cac4473d51b92f6e3675de2b023c742cadbe77bc09193aee84b73f645fa574","2b7271ba813bf4bb0ecb21a0b00bb1cf2afe00e05bc563db52a30c821dbc2691","6f479a3614edb09bf073d6d4697828a7f6633356269ec7ca1943a6b57ff63060","b054e8b58353c0bcdf75fcf6327a14f2e3b41a3c397fc09b813bc6014b00e014","5bccae03c94014ebe6470e241b734c713d887ab77670aa21e5c5332929034ac9","29165f84553b48adb982a6859c3f84f8e6f3f6868666c32833d22991f86fae6f","fab3488dcb3d3620990bd9bdc7e60c302d5b46a5f5ecaf2642f1d5a9162f6fd1","ceeecc078494fd307b9aee6cadb8be3b648fe341d2597921d9375eeeb86159da","3521c65edea246720873da778d4c7b50899e521a6f9ccf11db9231c20acf941b","4241e0a1b7bd703da139ee3d605c4df79d1e1a51324c79fa23a7ba279f9e0d4d","d8d2dd1cc1d53bb3137671e10ab4f66e68453603af73377e13b5eb137e20deef","81422fe8a7f1569777585172ee78dfc2bc518cc0d9484b6b52d2c55408fcaa2e","4a3f6af5fb1d8cbaff6a325e48e5ca4b754293aa704dac2d5134ca705b93830a","25ff5cb7e7eb8a48079838801edc403a24922853a5c9ecbe9b92ad89ef34f5bc","c70ed3045bb284b92328b0906fd562a9beadf7c18c1fc7619fe1cd1185ac1351","a991067180325d3ae08c1e9c5b640e396c56bcbf84e16befdd1bfabf5b1d854e","69f2709b10dba9282a125df12e7178b9788434af69e182b271d8100fbc6ee23f","4781dfa350c0edfa2024bbd9c6ec3473b22720e0c25690196e2846ec87d3b358","ac3b32455ac0181f9bb1f880291d62f55bb1d1c2b2fc33b138efcddb3326447e","653ddbf659c9ecabf2dcbe6eba88b009d631f900097ecb64482372e33bff8a10","76679fd4b1e507e1340def04e1c5afd2d99686e4fbb049864234184d6edfc829","5f2041ca2a3ff4132f9b045ef72fe8da28899d782cc5fc7555bb9031c6c88ea7","44dd407ac8025a31da38ad46e40bd8c0735ea7261ec04f2912cf50b416283e3a","584929f9f21ab2a18326ca62d0a321778efa9fd4c1633ccaa1f31f89545c09b5","491170055549f20c8da343294c7e31217e055409120752d7ba61d7fb38dd4d90","b0454ef57f65cb4e053925a41f3490b75e22e7f15aabb8e574608c9e99b8e801","48ed0b2098547fda3a749dc737f2de72e202bce54bf964f4915f4911dd6ff919","53411c421f8a14f9d3cacb134cb5b4df7d42ec58a9ad2a2f1a4e789018069a01","b65cba0ae1d627e1bede534fd04083a72df084bb2da45408240329865661bc54","0c7d4ed53222c0db91cf85ae7e63c25401d1ca2c0e23dd3d0a3c1bd4db117d8f","31e44f9639fc4d130c4bdf64801cb4fd81b6d6b9c934d1296933ad54e8ebd7fc","5bb11bae7d6685fd2e94c109a55a068352bb5d58cbd6d62eec90aa2a0b318e31","4220c4db5f54537a6c489054653c83c613766130c4c16e5cc95855959ea43917","c066239a54be8b05b65c032e53249ae6840cab6f846059511ecadc84a9fe476d","6581199a8dd25b367210d5db6d20e382d778cfab4afdacc65ab6af282708c130","5daeb35b19b48ecabb91ae3df8343635cda8981bdb65b6580ade46b8a9d55b4c","bf20e5c37336d65e10e1e580d75205a725a00851ebebe7a725ec182645502042","5e4c87d73a023f9552ec0a2ebc83915517c47680adfecdce389d27de5c399b8f","fd8bdedb40dc0bf0389a0bae4b8c26ddb4707c8c4f8f80566647fbf8bfa4938d","28a4deda4799000a789d8a5e4e699fc54b937a44b90da2ce5673d3c1b6701d57","dbf0e644c7dae188f0ba9a2fc8f33db72d6b18be825b5298438554bbaed31081","cee557160f500691880e9c18c5a341a93e9baf3e172bc11e6ef04a00105a218f","6e38ec9d4a1f6227ec35046ebbc00b995cd5226880fdd07ebdfc58644af52f11","09455f339535ce18d1d8f72733886de21d49c220f58e935e6c8dcf3c0e906fd9","8bcd226a827b531f96d1a4adf2c5d8bbf123bdde4a4e9f0d1a3a0cdff7896e6a","91c47c4f3e5117563a79584821cd738c9afd141269cf7fd2113eec628520175d","dae32cad719be048294a51bae263c7fcf5273295ea817897b269ec23011d71fd","0c7408964b21fce05952e60b820cbe6992c7fbff551fe2f0c3f2a64cf208211a","906af7d80142ea15b38f44cff22073837b4ccbb92d8f53cbb1669e06fbf2a77e","f947891d928601636fb35ebb682a15b51ddebc1f9d80720a133678c9a6b2bedf","d014a22a060359d55f0b90ea14d17246a0294eaad6d098d6d3c12af89eafc158","743a5529ea7bb0784c4d74daa5e409f421bb992b346fbd8d7f1a715c92165d8c","d30147cdaf5d21cea76644a148916d2ab0341c53e01b80646a37d85dfc4bd878","72f0046ea1dfde93a9143627fce8419a941f35ef42fcb9744b7efbbc4194a1a5","948833305ad123a09bb797311acbee923a3a5f82172b1008c2799ee83220f4e1","3c1d20ba12dca822d4a903e4ecfaccf9ce35f20187a81cf946ac9167e788ebb4","3a45465ae3deb0b5036a689aa518facd98c842a279c69f5df4df53cc7990374e","73987d0dc5d162b472d7fdb466f7c2e95f26fdcf724d4cb574e8fe6edd2c6150","cca13721b9e2de09b84b8871a650b06c1338726ce59a7ab2772d3e9b883016aa","e14525b743159baccf8a161d7d44556e6a48fdb6038e2a4c4eb48e376fc2cf29","09d46ba7e62ce7b2f43a3891e1d0be326d9e084fb474b6181b282532761e0b0a","26a5c485949679ae8448aa47f65f1d75f0cf0f7b40cf2dc2d8379ce4e4e51be8","87bf78eb4b4d73bad286ba80cb285a1783846545b27ca657cac1081cf504311f","e9e2695198dd10dfa5f2cf235e5fedb834237d8bfa8be3701d41a6d4ae568ff8","22043230abb12ec9cf18238a45aa7ac1ff02334c00d0bedcfabe59d85978d1af","cef33f0406b07ed13edd00074883dd076806606cb32df92ed3290f936a25b8fe"];
  // modclub Whitelist
  public let modclubWhitelist: [ExtCore.AccountIdentifier] = ["e218d3260d4f8f27730bad19f2e1a76e468d0402507fe41009163f7302aa9a9d","b8cf00baec594ab54b15fcb478ca2d69a85a1c62bab753c9714a08a92a0f32e1","c72bc05428000a373ee1b9d7cbc53f4f46dacc68fb130ecee06db1e802ab9154","7c94ebcea711ce5098518858a8d715e1576b4082b712dcf4224133bcbe6e6a7a","d5b01290d8274b5571b2ab7f602962c025d90062ea86157b83d21c11075cbf92","5a68c322923715d3ae534389d143cebb41546f8137034c12ecb4b5bd47578800","fc95ddd63e09a8b068686aa026123997744e0b0864fe4cabe2fb1ffdeb18a073","7e9bcc4d29875ef853430cd1d6b7682a1ea602b05f92454a59e178dbb79fba02","689222f84cf06e5fd43fff84b82e5490e0d3c57678a85a9c04181e7f4e381429","40949841f871836d99916174f2d738b99fa9437c738466b2cbb6a0652f8de82d","b5aeda919dc01437d377f84b050a833346e02b32d41610322d48e005d3c968d1","5a8d082fd3cba498a9add110fef8b363d5441dc8cd4dbfb36d2045db878f5b74","99e11f95eb0054c50fd723d91789d051dfb6e42c0608d0e3c96b0a64b395ea32","4a2500d622fcc6cff0c1cac58d4f5c69805aace9c395abc2558d8e2054755cdb","4c2543e3ccd17e934eaf7bdcc258407e4eec1926b61de6bac65bb512bad9e10d","9ed5f6465760a7e97b861131ca1872dc7584e69529b7b440ef5ef322480bde6a","84b286bcaeae4910452b5e61253478cda88374e927d87b7c9fcf9e7dcae6a69f","478a741dc5e80b2a9c73a4e3725c36fc9b985fd86db9435081e112455ea9c299","b23cfdd16829b76a2c141afa6d7d165459b6d04dd9552e230db0bd04bd7d5574","130cb40fb7028f5e290e5bb559ee67a60b3ef96cdd1fda6db2c200ca2521724a","e365a6fabc2b27a519244fc525466ccb639b7d07f2fee4807c1fa38227f39a1f","c676278407719bef7782b778ba0ecfcf0505aeaf2da5dd060b09854141c1fe15","f4c715bfdf66c70b26ed5364ed15386c3d77b695310a7e4f29e762412ece307e","3386a7e2b2a4fc10ab4905742470691ada8f77977b426412c05fa9f18fd3da47","cec248a2d60d8391b0fe8ba39911002cbd796fcbbf47b552e435d301732f7d35","714c3de6ea22f310d8553336232ce6a0d512a6f8a9855ea4923815bee87c2444","a7babf1ec8f667743a392ea62f87b6b33cc16613d25dea61f19471298ff0886b","36447b5d53c04d7e32c3082918727fc7fd430cb762ba75ec8d263e9bedee3812","67cd853dd986f1def3f62d58191ed4ef9682b1bfe354e0aacb72b4d33d02f0a5","b1a8b74a9626aab0a208544cd976f3b296ef1f8be7c9cb2b9afebbe8020d6178","67319812bb237b03781fbee5c8b4ea5fd41fb0f0196c2864cc16ef102d82dd89","2ab4ed22636b321561be135f5bff3759629036905b683b206d8664da0e2f7253","004088eefcc043098837e51d102ae02aac64b919c1bbac5a6d37b0d78a7024de","9547bdba35ae3de9e164da44a234a50df7b5ec0fd0f645d4cf335d9b6b2ced45","aa2ecac0ec3b21ea8fb38ed9ee768f50a967ad6b225690aaf7e7d241dd5a9077","14b40e40c7b5cd1d0c74e0a7a3f49960442789e96a43e02e3dd8e3a3d21f1130","25d8342f23cfeaa1eb0a1e0ba34faf46673357f360d16a966270542b7ef53f0e","7076d265605f0192d847b16f5fc4d6188ac9b1678846237a315a56c44756eb6e","490a313e9c053549affeec2f63189dad3878f09cd41c288eb2a5a79edf08ce31","fa1a6c82d8cbb72299b32eddbb65d3b1e565f40ed5aee28df5c5444e75312855","15132a23369141adb77fcc6cf5307edc62bc0361914cb8b185b854b008181cd2","dc4868162f67aba8d329dfa97df9fb5cd3f13f8b0853507e8322e0a755ab0c81","86b51d946e99ac8e7e298c7ca661109f6f1f33183fe96e3ea5d43d6052e13502","b91e092cfc7b8bd89bae958e39c633711bf0e4abf8f8f988b63da20dd2fe3491","495ff99da67feebe87a108f245803ef21678cfce52aa75dcd71f7f36e4e1252c","28ba9f29fb5cbcf8454932d48d8f1c6372b90307bff90f444ac3b435cbfb9f45","e64a1a6725fe7ddb678da5cc17d956a7d66106b06fa0ab7cc9495bce6a788136","604f292f6bed5d71c47dd99cfd6e7ff51338886bd184bb9bd6c8832e98d8c2b6","53f69c9b91ccf64a3af97cd3e5c7e52af746d1230cc77deac971d23ada2cd393","fb8d6f7a03769ce4e87353ee91b8d6fc5ba7fad56e569e083cc27c782a32ed60","5ad734374f45b112fad5de18ba288a9dcbe4b56b3fcfb77fd46f433c0f82dd65","0bb49986516c2a50b3f456e779c6b6b0a74fdf109366b7fd90899d3870305a20","9b9d7c71c9a09e66912881b47f9ee06154af8e9923b2034d3e13664720e48d1a","ba6d00465355a624929fb9f83b1391dc2dcc8c3e3b56d6de8276a40f3171b003","86f4f6617990561adff9c8ebffaa8d71852780741846d4cd16bd1580ea1c8ff3","5330a968d26be66f785514290efa145c0d567a72a08f5c4777b3d9c8d00b8182","00d074552a9bf822e0e60f1e3d977990cda22d864ee9de19eb9204774f4751f3","5c4a4e211149587d83a08f2a4bca30c62c131867fb2d65fadb76438b6431fa98","6d4d258da85627640a81d188d0ead1005b5fae004b699f2a3f1572a5391950d8","11dd949ed804edb0eea03a4c940586aa8d4a9f93e8d91905f6b8078a1cef2610","cef417e5b360825d620df3215a2112f40cefe7457ba15918e7c54eab2ad498b3","7dd9bea7273a2e189ead8c9ddb28df75d1864c3c1f03e7500e5ba9f58d6bb560","cc7f1d1ef21a2cf889bdffbbef2ae3b0e9519023170b9bf23e0f5e4c18f5d596","b3b5d265963dfff7498a095e9d18d423f4c30b36d885cdb62a96bdf7a603888a","1dc3317894044b647750c23fa7ee54fd7d7bdddc70b1faa0e14fec1e43384fee","d5ecc18213551ea8771ad8c332c71145d284ef8b1ca5e564dd0027f0d9341573","6dc9d5b69ec336e76a88e15feb89db31ec1d2492aa63eaf6545571db2a5378a6","963037107cbf1bf9c9405fcea6c048b14632305cfd23de6af1f0ef4a42a2fb52","89e51f893044282ded6243e62160d304619dd16ba6067842378edcb7ee621d0f","9e25ed15662558515a06d50b1aab1379ba0014893b719e215128a92e0afc171b","67304886027a2ae61e4158c82618a5999f9aacb51dbaf6b75029cf771045d03a","97aa23602c2d243ec0cc39b306cd8f2882d506ddc02c57f61e48ff1a4790fdcb","39ab49864f2d14d2bacbd4c637536c9e4efba36ffc055b6a8c8eeb03f473d322","39e43a557f582caca09f0926d33cbf08f82f690bbcaa80e8c4d98a54ac082130","34788c0d1ee0bb976a38d3da0e7f6a859d0350fbf91ba1af6b677ac439030c2a","141af2e18857c21ff140489993cc89fca0e0f03b11d5784e48240a2d757dd14e","43467b3c084629b407d1ba720c703add3c978e9637acbc5f8d921076a7dcde5b","3a247db1ffe287cc80f51bd68125951a2248095990e917ffa86ee4845d35aab4","490826712a3dec97e2281c685f473ff6f8716be1bf502550c594b4e89314c635","84b6a0b81edf481cb72835c12681a6954732fed64d1dc10faabd9aaa41a218a8","6c18adf9e97574983fce2fdb4373cbb02122e6e108335d2b936c8d0e1c60b5b4","9b0b303e080f9eced6a21f52438ca730ed9e0721823f709478c251bf144551f5","c553f5fe9064e964e089cc31854826797440ec6337de1c518934261993595611","01581d5dd6383f76f09184952df7335261c0b8af2fec58b5164e455c56a8198b","7423cabc28b2b6ed6ea27f4cc8b79e5f60fbf417842346c141c860aef0f22201","5f0ca04f0b9e0a4f0a36cad00727eee6a2e36f0dbb51224c23f46a0a239a4fcb","4cd783c47db43d80c3477a13bbaeca24f4b7e858f22940665962356fae5bb1b5","ab578db0d28f1292c8f18e6c1ccd3bc85cdce42c77d330fd0327dc28e4242fcf","774064d31bb6ee19aa81044c773652d25c273bcb2ba29f171fba0210585e1a5a","d6620ada20d34a5b433572d9fc149939fa01070b51e16a04683c46a2aa124ad2","7c7db62f8ccb348ad29a0a679cf6a6a35f2e21df6bbc2e019ab3063720d7925c","015935dee6b969f09e1b6be2aeab548bad7b42dd315cd1142b2435b7dd4e00fd","275c52deb5b93fb892e6a4d1adc41a363f78fab803e3cdb63a0afb850761ef6e","9f1bde352c7998cad031481b78b950949bf366948a0a3a017fab9802f6f8fca7","2066b743228727c03e46aac74044077a4addcc164d281b4d45e313edb683b0cf","c2e0778cd1625328d401693bf822139347d9a5213db0a78eba44318150f39aee","495804a98dac39c8eefcd5e81d6a1bcb204bfe5a37bcc048ebb623ca3c90af40","ef53cea76f36f9fe1789a1b1520dbee3e895d819967dab80dfedb01af3479f29","c44d2e59c5736bb2c57ef68e657324f9350b1ecdd3827bfde2bc3755cc9d3d16","40d871aeae012d867280b05763b0d17ead8a61530cab509bef66099c0e67beeb"];
  //Airdrop (only addresses, no token index anymore)
  public let airdrop : [ExtCore.AccountIdentifier] = ["e66c26a7e1258984b84dfc92bbfca3084d4252abb0091ca6c1196df2acb18f9d","ae3dbb489190f52c7a9830bbd89e00da4eef57b1d6ca04ede55be4e6fcb61bf9","943fd89889433e9095cdfee0998e51b76c3e89ec96cb1b19b09c51dd60ef61d2","a0b0636cb7e5962c3f8b579d4eaea4fa5cf5bd2b7bca012f7edb4c8e22704a15","aaa8563d505d86d00721da1fc5e6ec6005306fb815aa480d12d82c066279bfd9","a8811f0497f397fc669783447e53a3ee62f58089b28ddbfe8cf4e91a5e37073e","1edf167a947719829359da03128db5b6d18b1c6e0e342df97a21110740fcd4e2","5c064042aa679a9faf58af1b9c4e696110ddfa0502dcafae6c88c333654f1e5c","1f2fa4e9a5e1ad1ded167e898b13693bfaa5f7e7021da33a6ed9f3f71d6c6efd","8ecad355c3bafd563621d50c54d7718f87c17f27b1da7d2b954ef0c8824ae552","943bc8a34c70aa051765133096c936d5e0087adbe7015a9052c2bc95cb9894fb","923081287fff9e953965200c916a24c94a9e7aaf6197511e39b272f25161925d","07a73e6925c30170497fa8c1d8f0a83920c1fc65b96ba73ad179925a3ed01821","d4756e1d8ef5a5be63e00502168d30d690d9af00bfdf40c8808e0cae5dd7d156","fcfa9dec3eec14f189834e767d0caabb01288c5566ee6d66b29d7441c83d678c","30dea2609dca9a360f0e931232726a20ede0c6f899850c3d4bc52a3dc1e2b561","55cd0bd6cf72feb7e6e960f8c596e1483f4995e42ddda0e9e80f7ced20e52d17","150292cdf3f3e70255b2c1f85b9b8f63a2a0cf4e05bb122245379f9cc679eb91","42c4aab0c41657d86f1d56a501ffe45c0c15637581aff73f35dd20b13f24c1d1","61ead6416ede483d172d30278d7aecdb34608875c6ad8075efd48aa5088f1c04","170ca59e43a658a2370d37a2c1d93cd1f00484dc79af0bf00a913b99c9f11479","9099e46e8a64460bf425993e5fe262d58b6b82c0f2e3b81136be3a4fe1432949","a2cc142e428f9ba66e267d5a54c1d31944d7caaea6d327f71ba0157eb8242a96","c0d92705e64e1fb79a9409bdc0f52ffb4558d2bfd9bc1271f7bb8b08d1662586","ce6c437154dd820cba6d2ba65fc5346e9211e5ba1917581f0e655abec11eb585","2b23b616c4f8d100f77962e1dceb98e00d9a561fd177b351ad6b301952e8c532","7c1a07ecd0c0622eeb6f8855d6d207d5e85bed86835c16f1ed7194187e2d1397","38d937ce98b75a57504863c0b5002a299654c40f50c3c1541740d44023a33492","ec816fb54abb5524e31d73835bd3d6eaca5596a3e007a57c25c7847880df18f9","758b7a408bffb38ec1b9d4af89d4108ab234dfe8adf3fadcd9b6c257394dcd9e","956471645863eff9170cf1379943ee529c0d247f355fb92af600cd43b21d07d5","9778d5830e567dfae40efff44c086f3d4d0f399fdb363d7a1a0ed98fb06df6f3","187f2d9e415ce7abab46a3634a301e62ba98a29cb1501e234e38b56943ef7e22","1722c295161ff9bc3bf38845c9206e8dd3e1cfc3b82e6bd857775e3de4a92669","ba35290bb1441d7b44cc53070cd800db09477ef8bebf28291a922d1dbcaf3d73","72f34ebbcf20fc938057f3a3655572524dd68bfde2e6cc67443092915fece58b","c1104abf29eb440fba0ef9b812686c7898a73a0845bc6faf4c7bde874f467c56","84cf3e75e1330199048cf834e369f098903cfcdd83443b12f6f688856f08634f","ee9cb256efe974b5fc937e162a785507d0a1bbc1b3809d40af73f6e51f7658f8","38e4b01187ae25d550c676d3e8cc3d0b34ba1530044a5158c2a02ca7b4785d4b","1fd48a38b0dba3a893369e3bff6ce7949e3a9cc6e3e4870621a002a5d5f1a2e6","c92a27c527253d48233262e08e4b630c55c49ac8b3e062525efa107514450a14","98ff8c0c96f046d554669f732cc8c0961bb3a1547021d11d3a72aea869c4db35","26ebacb6a4b9885cef2e930018cb8a30f0f5a8bdea47fce8b47da0cb53e10143","3d3b410f3f85e6fc21b0e2f821741444c1cf3242a3746c5779d9e10b32014155","ae770e479852941d6784e9767b2085d6a27245d87fddb0b4f9bd4cd8184910d9","d5a0a3f9507ccdeb4f564993b6dccf49584b66d9f033f7071dac4a9a2c0af8ba","5056a51fc3c88080e11e64caf5590c5e14a2ea89d95a5942b307a4b5960e0cbe","553b5f1bc307438ee233436e20cfd513102486b79dfe59a124771d3edb6f9f50","d8fc4ec2d0cd0deeb6590f68eb2ab25e78a4fa7af8e0ef7720ffa4c14a095a4e","59018c310e53d422a90d55d586a9ea57efac73c41b69650d7514dafcf9afff04","5b62516fce6499766344d36dd94b65e9debcb92573dab95f40780df24b2575fe","9f02510e49387598a5e5c319b1d9d3ff9cc5a6d0f694cd80e4468575a337257c","58279bdea1929fa95ba5f4b071fda52a0cc16d2d19360d33e5b1df4567373f80","47f1313b18f39ef27804c80a0b20b0dff8e4b05a7e2043bd92085569192a8f43","4dedbb356f6b62c0048fc638297801004425146bb9ac6e3f12e24d42fcbb7be1","f2bcb48fb7b443d9918f6614e60d665163b2bfe51107e3b56a269b528bda0f50","839e7a64095ab8912e19bca8f81d98a014fadd5eeba6a4f8a93fdd83ba4873da","336bb7c22984b16b28ed3cc563369bd48cac5fb7adeb3008224e62bae7837572","7a953e6c0155339ede6c0ba766774cadca985899d1b59973584804f02059675f","2ab1f494f7d5bafd295dd2e9c4c51828f25a24b3c960210010eb06ef0109ad56","0549f8c74f795bc89c2f6c4b7ec8ba69e7202d1a27e2468eb4ed8f3f3cd70523","6e015e9d34b3d8785b7262f5be83543370c16e660230e55511179985b1199888","a449318f671d9217189eb64630d1b6fbe56ab9d96d35170fa20f3eb2e2b7f597","eed127b654e05febf5ea7c4bdcca07027635ad816d20e6d3a7eadeacb3c67d65","0c5b51d0035ce077b0b87d41561ad00bfc4422fb804c452834ebaaabf522fe66","d20a055930966feb14451486c4753ee34d5398fed91ba6173b0d7c2ed87bae5f","a1ed74c00fc95976e0f057bee1622cc023dd9baf7f7637723a32943d3acd023c","7b6f943de9f8faebd876e08b11d13d60cd6af58e78c1b645dd340634d04abc88","29652fa9ea1412562c4392cf549771755cfe4aafed7e1ef7d278b134f3a0ad75","1a46e9188fe165d6325527faa75786d1183d5e9d9d831bb07fb4713242aa692e","bd6e6822f505c84d0887ddd3d3eb5111cbb6c72198406edbe2e57a80e12fe90d","599071fcb4dc0a0d286c86ed5fe891fb7bf9019540d8580fdf6e6b7d5330a829","731bc30f1eaf7d49177582b2d56ae23b882a880e3d1da9837115baf0cd4223c9","a38156e576b327144742258f36ef4df7b9dd63c31807b5c001f1a7a2f1ab2e50","6b9ec6877205583d2667107ba842cf90a25d292689b11b1a227729f95efae6bf","d79c712fe30cf059a7bbbbc23a0f593366239e3fbbc97503eb28865ee64b9a1c","774a87128c3dce1f15648a18ecd77d615ce710e4bdbb36be62becd36a787afab","b5d5a08d463fd18eaff54f7d36f341eb2116ff3c067a344ff13b73f000eaf1fd","a0caf680569ddd3e5e97ee4a0bf54d5ec51e3bb7ca172f776c627e7100fd895b","edbe4e8fa7cec533e8e5e2348834a85521e1294f5ea0805b01c89cc9f546912a","1bc591a1c768b6deaaf2d2e345ed6f7603f55025f8180e34bad0a5a284a03928","e6b168023091e0b24da8bdb53d3c0853fcfd570e69fbf7da78dd78b4609f17d6","58db9c54884c6414e9d8e1a2279b8adb75d144c8d1631b0cddd4387e74661cec","dfcb7dff51efaf6d519e7095030e1a356f55b6cfb1223c1193b3c41c84e85622","3cea9f635ff8f4a3681aeaa243e188adadb046b8a1a9b5d77e2a2a2c637d4b6d","3606e92ccc1122414b9990801db5f8d4f850a80312bb9cc85290ba8d3029929e","2777425508ba1f4a63de35da5c9df0a02647634d2560f76fe9f85eec4684585c","bcf630b49106848930944ee5b1f64481cef5f19fe94fd96c35ab666491919dff","e6bf6ebdaf76c27c06097e190f6124efb387946fa9805e1f37815789792bcd99","e480634d6200dd59692ee939935263fd9aa9e4f9c8547888327cf2c6bd46fe5e","7822dec0f20a5c7e8a4f2b1ec507e13e90f8aff8c98cf2ba56695815b981bc7d","1e1d250468c2ac4ca6e8b198c3ce46b0fec11ad96484df4144cc206f17d09fb0","a3735071db3f29ae2c0f536014fea9bf345fba93f11f1e859c007c6489a1ee2c","a2a75a6597348e4affbd735abb6e65242d8f9ba01dd9eb4b767e43d14f5a2370","37ec421f604650fced13b55147a6bd4829fc4d615b81e9520bfb7b150d2757e2","e382be0b43b4d7a97a06ab8b7cf235675edd81a31f32e9c1e8bad89f80c7a4d4","b29ae2c4f16daefbb612e6f1a51c43618d9efe183c1918a7f58193861d736734","024bbf030e3a7b462c2a7aea00c171129320b91148c17f674a335fb754da6000","a4bc0bb1e6a486e6a8498d747d99e9757d54febb44ea42c1f6bb6f43d1b3c0ad"];
}