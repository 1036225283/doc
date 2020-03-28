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
