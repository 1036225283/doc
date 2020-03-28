#!/usr/bin/env bash

# get the environment accounts from docker
curl http://127.0.0.1:9090/admin/accounts

# transfer
curl -X POST  http://127.0.0.1:9090/wallet/easytransferbyprivate -d '{"privateKey": "f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6", "toAddress":"410905e5c44f91d0425929b56ef39a8f5ad18c007d","amount":100}'
curl -X POST  http://127.0.0.1:9090/wallet/easytransfer -d '{"passPhrase": "7465737470617373776f7264","toAddress": "41D1E7A6BC354106CB410E65FF8B181C600FF14292", "amount":10}'

curl -X POST  http://127.0.0.1:9090/wallet/easytransferbyprivate -d '{"privateKey": "186eaefa8b860a8aa94c5b2097fd1e4100d58204d0bc97fce3411410c06d1e1e", "toAddress":"419d671babfa95a99e984a068914f5c67d24f7d83a","amount": 77888000000}'


curl -X POST  http://127.0.0.1:9090/wallet/easytransferbyprivate -d '{"privateKey": "f89b77b8b17674ad9c8e9941c66ad29b970614b8906e0b7d7b2d5979a975ccc6", "toAddress":"THkDEasinhayE6knyeJwwjxzjYYAhcmhDV","amount":100}'

# get balance
curl -X POST  http://127.0.0.1:9090/wallet/getaccount -d '{"address": "TGRkqdofLgCbS7Woay5jr8xLEb8qCYoQUK"}'


# validateaddress
curl --request POST \
  --url http://127.0.0.1:9090/wallet/validateaddress \
  --header 'content-type: application/json' \
  --data '{"address":"410905e5c44f91d0425929b56ef39a8f5ad18c007d"}'
TAnv9Z1v86BkLmbH1XqVhqZkkBKVFQZhAE




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