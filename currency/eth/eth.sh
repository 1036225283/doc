#!/usr/bin/env bash


# ETH
curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"personal_unlockAccount","params":["0xf4a14010acbe82428516415a117b157b59cc6bb3", "scottxianggangretieth"],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0xc0e3c639cf06455786653bdd89503a3f9e4726217f54b394d5f925e7e6939109"],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_accounts","params":[1647],"id":1}' http://127.0.0.1:8545/


curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x802dfa", true],"id":1}' http://127.0.0.1:8545/


curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}' http://127.0.0.1:8545/
curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_sendTransaction","params":[{
  "from": "0x2f1B9B520a45DC468337F33e032761DCA067E7dB",
  "to": "0xd124E2B4c3BC65905763B3751cbfDa87d2c636cF",
  "gas": "0x76c0",
  "gasPrice": "0x9184e72a000",
  "value": "0x9",
  "data": "0xd46e8dd67c5d32be8d46e8dd67c5d32be8058bb8eb970870f072445675058bb8eb970870f072445675"
}],"id":1}' http://127.0.0.1:8545/
curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionCount","params":["0xf4a14010acbe82428516415a117b157b59cc6bb3","latest"],"id":1}' http://127.0.0.1:8545/
curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionCount","params":["0xf4a14010acbe82428516415a117b157b59cc6bb3","earliest"],"id":1}' http://127.0.0.1:8545/


curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0x0259b2c92ad97acaf2de4f0819347f4c31513a6d", "latest"],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0x385ace860e344d60e1389959f893d0989e36f6b03f79f3b5b27b6768b9f5d154"],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"personal_newAccount","params":["123456"],"id":1}' http://127.0.0.1:8545/
0x0259b2c92ad97acaf2de4f0819347f4c31513a6d

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionReceipt","params":["0x2216155d595f51b5350e0cad45f689192106b06d506354e90c8206b39cbecac1"],"id":1}' http://127.0.0.1:8545/

curl -H "Content-Type:application/json" -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","params":[],"id":1}' http://127.0.0.1:8545/

curl -X POST --data '{"jsonrpc":"2.0","method":"eth_gasPrice","params":[],"id":73}'

