#!/usr/bin/env bash

# get balance
curl -X POST --data '{"jsonrpc":"2.0","method":"getaccount","params":{"account":1026071},"id":123}' http://localhost:4003
curl -X POST --data '{"jsonrpc":"2.0","method":"getaccount","params":{"account":632774},"id":123}' http://localhost:4003

curl -X POST --data '{"jsonrpc":"2.0","method":"getwalletaccounts","id":123}' http://localhost:4003

# get wallet balance
curl -X POST --data '{"jsonrpc":"2.0","method":"getwalletcoins","id":123}' http://localhost:4003


# get total account count
curl -X POST --data '{"jsonrpc":"2.0","method":"getwalletaccountscount","id":123,"params":{"enc_pubkey":"CA0220009D92DFA1D6F8B2CAE31194EE5433EE4AD457AE145C1C67E49A9196EE58A45B9F200046EAF20C0A26A80A7693E71C0222313A0187AFCA838209FF86FB740A4FFF7F0B"}}' http://localhost:4003
curl -X POST --data '{"jsonrpc":"2.0","method":"getwalletaccountscount","id":123,"params":{}}' http://localhost:4003

# get public keys
curl -X POST --data '{"jsonrpc":"2.0","method":"getwalletpubkeys","id":123}' http://localhost:4003

# get block info by height
curl -X POST --data '{"jsonrpc":"2.0","method":"getblock","params":{"block":8888},"id":123}' http://localhost:4003


# get last height
curl -X POST --data '{"jsonrpc":"2.0","method":"getblockcount","id":123}' http://localhost:4003


curl -X POST --data '{"jsonrpc":"2.0","method":"getblockoperation","params":{"block":369170,"opblock":0},"id":123}' http://localhost:4003


