#!/usr/bin/env bash

# test url
    https://api.shasta.trongrid.io
    TDQZjhJ9DWPQUegDJgUaK5x8JHQZjoNEQv
    https://shasta.tronscan.org/#/address/TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK/transfers

# get the environment accounts from docker
curl http://127.0.0.1:9090/admin/accounts

# transfer
# ok TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK
curl -X POST  https://api.shasta.trongrid.io/wallet/easytransferbyprivate -d '{"privateKey": "f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6", "toAddress":"THkDEasinhayE6knyeJwwjxzjYYAhcmhDV","amount":10,"visible":true}'
curl -X POST  http://127.0.0.1:16667/wallet/easytransferbyprivate -d '{"privateKey": "f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6", "toAddress":"TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","amount":1000000000, "visible":true}'
curl -X POST  http://127.0.0.1:16667/wallet/easytransfer -d '{"passPhrase": "7465737470617373776f7264","toAddress": "41D1E7A6BC354106CB410E65FF8B181C600FF14292", "amount":10}'

# get account info
curl -X POST  http://127.0.0.1:16667/wallet/getaccountresource -d '{"address" : "410905e5c44f91d0425929b56ef39a8f5ad18c007d"}'
curl -X POST  http://127.0.0.1:16667/wallet/getaccountresource -d '{"address" : "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK","visible" : true}'
curl -X POST  http://127.0.0.1:16667/wallet/getaccount -d '{"address" : "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK","visible" : true}'


curl -X POST  http://127.0.0.1:16667/wallet/easytransferbyprivate -d '{"privateKey": "f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6", "toAddress":"TV5BWDcYj8ix9dmRoCHtGfRxWneMgsexjM","amount":100,"visible" : true}'

# get height
curl -X POST  http://127.0.0.1:16667/wallet/getnowblock

    https://api.shasta.trongrid.io
curl -X POST  https://api.shasta.trongrid.io/wallet/getblockbylatestnum -d '{"num": 5}'


# get block by height
curl -X POST  https://api.shasta.trongrid.io/wallet/getblockbynum -d '{"num": 3730046,"visible" : true}'
curl -X POST  http://127.0.0.1:16667/wallet/getblockbyid -d '{"value": "00000000000086cffb5a47705466581f5a827a0c9a053c0c3a871ecdda39d1b7","visible" : true}'

# get transaction by txId
curl -X POST  http://127.0.0.1:16667/wallet/gettransactionbyid -d '{"value": "6231c0c9eb7b846c5b1caab75c4f393446723ee7edadcd990673e737061ef54c"}'



# boarst
curl --request POST \
  --url http://127.0.0.1:16667/wallet/broadcasttransaction \
  --header 'content-type: application/json' \
  --data '{"visible":false,"txID":"60ff5a4331a46c03f771280ae8e487df231baa24849983dcb5137b72bf4869f9","raw_data":{"contract":[{"parameter":{"value":{"owner_address":"41bf97a54f4b829c4e9253b26024b1829e1a3b1120","account_address":"412b12c4786c48eb47aa3d2368671105c9e7b0d659"},"type_url":"type.googleapis.com/protocol.AccountCreateContract"},"type":"AccountCreateContract"}],"ref_block_bytes":"9895","ref_block_hash":"da9b5e0786de1690","expiration":1576574544000,"timestamp":1576574485586},"raw_data_hex":"0a0298952208da9b5e0786de16904080d1a999f12d5a6612640a32747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e4163636f756e74437265617465436f6e7472616374122e0a1541bf97a54f4b829c4e9253b26024b1829e1a3b11201215412b12c4786c48eb47aa3d2368671105c9e7b0d65970d288a699f12d"}'

curl --request POST \
  --url http://127.0.0.1:16667/wallet/broadcasttransaction \
  --header 'content-type: application/json' \
  --data '{"visible":false,"txID":"60ff5a4331a46c03f771280ae8e487df231baa24849983dcb5137b72bf4869f9","raw_data_hex":"0A715A6F0802126B0A32747970652E676F6F676C65617069732E636F6D2F70726F746F636F6C2E5472616E736665724173736574436F6E747261637412350A035452581215410905E5C44F91D0425929B56EF39A8F5AD18C007D1A1541D18BA2C4F7D9BCBA4F14F9AFE29FB6A273089033206412414D414958A4378EA7D63907BFE62D653E720ECF4A02C6B195FEB772594FDB7F272BFC13F3D13B51FD1E4B97AF360F48B1FE181923A82D4288DE27B662F7C4024000"}'


curl --request POST \
  --url https://api.trongrid.io/wallet/gettransactionsign \
  --header 'content-type: application/json' \
  --data '{"transaction":{"visible":false,"txID":"60ff5a4331a46c03f771280ae8e487df231baa24849983dcb5137b72bf4869f9","raw_data":{"contract":[{"parameter":{"value":{"owner_address":"41bf97a54f4b829c4e9253b26024b1829e1a3b1120","account_address":"412b12c4786c48eb47aa3d2368671105c9e7b0d659"},"type_url":"type.googleapis.com/protocol.AccountCreateContract"},"type":"AccountCreateContract"}],"ref_block_bytes":"9895","ref_block_hash":"da9b5e0786de1690","expiration":1576574544000,"timestamp":1576574485586},"raw_data_hex":"0a0298952208da9b5e0786de16904080d1a999f12d5a6612640a32747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e4163636f756e74437265617465436f6e7472616374122e0a1541bf97a54f4b829c4e9253b26024b1829e1a3b11201215412b12c4786c48eb47aa3d2368671105c9e7b0d65970d288a699f12d"},"privateKey":"your private key"}'

# get balance
curl -X POST  http://127.0.0.1:16667/wallet/getaccount -d '{"address": "TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","visible" : true}'
{"address": "TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","balance": 200,"create_time": 1585383672000,"account_resource": {}}
curl -X POST  http://127.0.0.1:16667/wallet/getaccount -d '{"address": "TV5BWDcYj8ix9dmRoCHtGfRxWneMgsexjM","visible" : true}'
{"account_name": "TestB","address": "TV5BWDcYj8ix9dmRoCHtGfRxWneMgsexjM","balance": 1000000000000100,"account_resource": {}}
curl -X POST  http://127.0.0.1:16667/wallet/getaccount -d '{"address": "410905e5c44f91d0425929b56ef39a8f5ad18c007d"}'


# validateaddress
curl --request POST --url http://127.0.0.1:16667/wallet/validateaddress --header 'content-type: application/json' --data '{"address":"41ef0a3808ca500de23e1f67a478e536076b9c887b"}'
TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE
curl --request POST --url http://127.0.0.1:16667/admin/accounts --header 'content-type: application/json' --data '{"address":"41ef0a3808ca500de23e1f67a478e536076b9c887b"}'

curl -X POST  http://127.0.0.1:16667/wallet/broadcasthex -d '{"transaction":"0A715A6F0802126B0A32747970652E676F6F676C65617069732E636F6D2F70726F746F636F6C2E5472616E736665724173736574436F6E747261637412350A035452581215410905E5C44F91D0425929B56EF39A8F5AD18C007D1A1541D18BA2C4F7D9BCBA4F14F9AFE29FB6A273089033206412414D414958A4378EA7D63907BFE62D653E720ECF4A02C6B195FEB772594FDB7F272BFC13F3D13B51FD1E4B97AF360F48B1FE181923A82D4288DE27B662F7C4024000"}'


#
curl -X POST  http://127.0.0.1:8090/wallet/gettransactionsign -d '{
"transaction" : {"txID":"454f156bf1256587ff6ccdbc56e64ad0c51e4f8efea5490dcbc720ee606bc7b8","raw_data":{"contract":[{"parameter":{"value":{"amount":1000,"owner_address":"41e552f6487585c2b58bc2c9bb4492bc1f17132cd0","to_address":"41d1e7a6bc354106cb410e65ff8b181c600ff14292"},"type_url":"type.googleapis.com/protocol.TransferContract"},"type":"TransferContract"}],"ref_block_bytes":"267e","ref_block_hash":"9a447d222e8de9f2","expiration":1530893064000,"timestamp":1530893006233}}, "privateKey": "your private key"
}'

# create transaction
curl -X POST http://127.0.0.1:16667/wallet/createtransaction -d
'{
    "owner_address": "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK","to_address": "TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","amount": 100,"visible": true
}'

curl -X POST  http://127.0.0.1:16667/wallet/createtransaction -d '{ "owner_address": "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK","to_address": "TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","amount": 100.1,"visible": true}'
curl -X POST  http://127.0.0.1:16667/wallet/createtransaction -d '{ "owner_address": "TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","to_address": "TFKw3fQ8m815ibTmQJSoaE9Kqug9Q5SYyc","amount": 100.1,"visible": true}'

{"visible":true,"txID":"9612f6c078a73e7352f0a4a2acef4d6c739549f539d1abde3fcd6f1b8aeb1242","raw_data":{"contract":[{"parameter":{"value":{"amount":100,"owner_address":"TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK","to_address":"TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE"},"type_url":"type.googleapis.com/protocol.TransferContract"},"type":"TransferContract"}],"ref_block_bytes":"4d10","ref_block_hash":"5d198b2fb7583839","expiration":1585658181000,"timestamp":1585658121171},"raw_data_hex":"0a024d1022085d198b2fb75838394088ebde84932e5a65080112610a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412300a154146d625764064fdcc44e622bf9498a95dca57b5791215410905e5c44f91d0425929b56ef39a8f5ad18c007d186470d397db84932e"}

# broadcast transaction
curl -X POST  http://127.0.0.1:16667/wallet/broadcasttransaction -d '{"visible":true,"txID":"25a7eed7d441c72c0057af5e7f74a95e45fbd390f6e5f87732a7f29059a7b041","raw_data":{"contract":[{"parameter":{"value":{"amount":100,"owner_address":"TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE","to_address":"TFKw3fQ8m815ibTmQJSoaE9Kqug9Q5SYyc"},"type_url":"type.googleapis.com/protocol.TransferContract"},"type":"TransferContract"}],"ref_block_bytes":"5aae","ref_block_hash":"54ebdbc0545dc4e4","expiration":1585669512000,"timestamp":1585669453952},"raw_data_hex":"0a025aae220854ebdbc0545dc4e440c0b6928a932e5a65080112610a2d747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e5472616e73666572436f6e747261637412300a15410905e5c44f91d0425929b56ef39a8f5ad18c007d1215413ac40ba3968c2e9415bf57edeec4099afb2f699318647080f18e8a932e","signature":["5bada55cda397ee4bc9cacc8bb9d3b59640d1da3290e896eb98e944301f2d45037ae914e61aec8f955ce3efe3f2f6e18985c17a3e61d21205bd12ae6913cf2a400"]}'


# balance of trc20
/wallet/triggerconstantcontract
Description: Trigger the constant of the smart contract, the transaction is off the blockchain
curl -X POST https://api.shasta.trongrid.io/wallet/triggersmartcontract -d '{
"contract_address":"419E62BE7F4F103C36507CB2A753418791B1CDC182",
"function_selector":"balanceOf(address)",
"parameter":"000000000000000000000041977C20977F412C2A1AA4EF3D49FEE5EC4C31CDFB",
"owner_address":"41977C20977F412C2A1AA4EF3D49FEE5EC4C31CDFB"
}'


demo: curl -X POST  http://127.0.0.1:8090/wallet/triggerconstantcontract -d '{"contract_address":"4189139CB1387AF85E3D24E212A008AC974967E561","function_selector":"set(uint256,uint256)","parameter":"00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000002","fee_limit":10,"call_value":100,"owner_address":"41D1E7A6BC354106CB410E65FF8B181C600FF14292"}'

# freezebalance
curl -X POST  https://api.shasta.trongrid.io/wallet/freezebalance -d '{"owner_address": "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK", "frozen_balance": 1000000,"frozen_duration": 3,"resource" : "BANDWIDTH","receiver_address":"THkDEasinhayE6knyeJwwjxzjYYAhcmhDV","visible":true}'

# 带宽
4b1bba9fe7e914da79ab5fc9e96d058397fbbcc58d2dcb02ce2b3fbf20c9e340

# 能量
733c231cfb1bd6836154f00852dd4a03f151b0e83e528159b40a1e471f312562

9,996.30739
9,995.30739

# transaction
curl -X POST  https://api.shasta.trongrid.io/wallet/gettransactioninfobyid -d '{"value": "c58f3e6329b862374b93f065839abe52137f84c0661f1d829d1adbe91d50e47b","visible":true}'

curl -X POST  https://api.shasta.trongrid.io/wallet/gettransactionbyid -d '{"value": "c58f3e6329b862374b93f065839abe52137f84c0661f1d829d1adbe91d50e47b","visible":true}'



curl -X POST http://127.0.0.1:8090/wallet/freezebalance -d '{
"owner_address":"41e472f387585c2b58bc2c9bb4492bc1f17342cd1",
"frozen_balance": 10000,
"frozen_duration": 3,
"resource" : "BANDWIDTH",
"receiver_address":"414332f387585c2b58bc2c9bb4492bc1f17342cd1"
}'

#(0) TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK (10000 TRX)
#(1) TV5BWDcYj8ix9dmRoCHtGfRxWneMgsexjM (10000 TRX)
#(2) TVRAKky9T7zETitmkacFptmavtaxQzEMEo (10000 TRX)
#(3) TKq2Ku1zXDxteJeoKuSB5SRuA33pD27uZ3 (10000 TRX)
#(4) TPm51Quy4NwWUsXKt8vmKM8qNEVdfRqpnN (10000 TRX)
#(5) TGWs2CcTJtVZyQKSDFTkmdMVg7aRiDDWhf (10000 TRX)
#(6) TJ7kSJokGykwkbvAJuH4a2vf2oUJarsEH9 (10000 TRX)
#(7) TLoYpyf3MwcVdXMDHz8Re3GgNDTEtAife9 (10000 TRX)
#(8) TFMXnYtDnyFU756JmQSLVHwJxjMMy6BtkZ (10000 TRX)
#(9) TAfpva8qqP1zppXB47HJTfddBr9U1pLrx5 (10000 TRX)
#(10) TVpmjGWNvzeHyeFWz882v1ocMp4UXUzuBE (10000 TRX)
#(11) TDD4k3Y8FPizjwmACBaXvSTLS8X2FrHEjo (10000 TRX)
#(12) TCwMjoGYv5MdGZ1NxX7RBX5F2qgCLGxXUy (10000 TRX)
#(13) TCGS6EEdfa5M8yXpmL2z785A2cXYKWQMZz (10000 TRX)
#(14) TGg83QpmeKvCJGmD4jQyasvfvxEnmXy8ZZ (10000 TRX)
#(15) TM8jN5qqBkbbByky2TYww5oNUAjsnLWBfk (10000 TRX)
#(16) TPXWMzTAMZKPcaaZUtw2YJGJWf2mf4QWVh (10000 TRX)
#(17) TNKyfB5xnPrQKK5EAn28TdyhZECDLSv4XP (10000 TRX)
#(18) TVCJZhwuVtjSeafNqj4JPfAMJHd4UeAZEf (10000 TRX)
#(19) THkDEasinhayE6knyeJwwjxzjYYAhcmhDV (10000 TRX)
#
#Private Keys
#==================
#
#(0) f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6
#(1) d2a4d2638c8a9a5125e2dac52e0d752461bcaed7856efbc6a75f461e4cb70b35
#(2) 07b57a1e841e6de961659a51e2c19623c07f91e0dd93d664bfd73c4f56bd2f59
#(3) 4896d3fcac3560112b9e163a1864f4480793e8fb20a618df61f8c6e33f27b784
#(4) 51669fa660082fc4c6e7fb6a0a02cb80735243a18e07d4b646608f589a14c8f6
#(5) 3b80c52f162c7d49961763b74b430f34700bcc41707f14790779516890dfb145
#(6) 43b07d6c17a7e1b9f858ede47efacc6e247b5bb43d3c8660b618d53c644aedfa
#(7) bcfaf72e2a4834a2ffe4373d26ae070718d564c7230dfcce1c6d492ba241a88e
#(8) abbf086750ed2f18f79be561fac7f510e40e6ae99582d302abebf8c02694d9a6
#(9) 5ec853d252a945747b3dcb65bffb6f425bbdd0a304052637447702ae45ca54de
#(10) 50b3d98248d85cffd515524bb090eefec31f095f5175827bb27022819c576ea6
#(11) d3d8b3551d2a3abeb681a0c3400763b7b0baeeb6e5609e7593a6f664ba446c66
#(12) 59ccd212c98df08cbcb07de12d76f7d8357f6650a1b1ad0181cc7ca915ded3c9
#(13) cadd2165b59135ba451bbb4834b7241fb4f477455b6e6a055ed00423b3cc16d9
#(14) 7ce3babbb7213cef3ce9f8e94ed367a4071c886cf149d5d0da10f2a5ca24ca1f
#(15) ecd44145d824a5b8aeb9673e52d1bb78056771ed6eaeded48070a59acf6e7571
#(16) 81c06481e1931b81edcf2d92f3a60ed0909cc1920505c59f9a7f5c421f6457b4
#(17) f62cbea7d8c32172b7c64a33f5f1f548d5734359f2a5fa598aa9d94151622d2b
#(18) c0277dd8d207935829e6c58bd352f43233ce2fb2bab0741aaa4dd4929faabe22
#(19) 91182576325368fdf8767d09a56f8b9b0ff58d1a66c02b90a7bab0ba3bdfe2e5
#



curl --request POST \
  --url https://api.trongrid.io/wallet/broadcasttransaction \
  --header 'content-type: application/json' \
  --data '{"visible":false,"txID":"60ff5a4331a46c03f771280ae8e487df231baa24849983dcb5137b72bf4869f9","raw_data":{"contract":[{"parameter":{"value":{"owner_address":"41bf97a54f4b829c4e9253b26024b1829e1a3b1120","account_address":"412b12c4786c48eb47aa3d2368671105c9e7b0d659"},"type_url":"type.googleapis.com/protocol.AccountCreateContract"},"type":"AccountCreateContract"}],"ref_block_bytes":"9895","ref_block_hash":"da9b5e0786de1690","expiration":1576574544000,"timestamp":1576574485586},"raw_data_hex":"0a0298952208da9b5e0786de16904080d1a999f12d5a6612640a32747970652e676f6f676c65617069732e636f6d2f70726f746f636f6c2e4163636f756e74437265617465436f6e7472616374122e0a1541bf97a54f4b829c4e9253b26024b1829e1a3b11201215412b12c4786c48eb47aa3d2368671105c9e7b0d65970d288a699f12d"}'

#申请免费的资源
    搜shasta tesnet faucet