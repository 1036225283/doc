#!/usr/bin/env bash
curl -H "Content-Type:application/json" -X POST --data '{"method":"listtransactions","params":["*",160]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"getblockcount","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"gettransaction","params":["32eb5c5c55aeffa140bdb52b4dbe41e6d74650df2d6f2de9655653900dc13e23"]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"listaccounts","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"getbalance","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"getbalance","params":["2N72Ec5o3t8CKWq9Zb8cLCCZo7tKo1QaT2m"]}' http://admin1:123@127.0.0.1:19001

# 添加找零地址
curl -H "Content-Type:application/json" -X POST --data '{"method":"fundrawtransaction","params":["020000000101ba55ba5d8c14ff663fecaeb57c52260d112d48b6cc8ac33725934f696d169e0000000000ffffffff0100e1f5050000000017a914681ccd18fac30d2b6fa93b0e9cdb4ea3a12ab6d68700000000",{"changeAddress":"2N72Ec5o3t8CKWq9Zb8cLCCZo7tKo1QaT2m"}]}' http://admin1:123@127.0.0.1:19001
{"result":{"hex":"020000000101ba55ba5d8c14ff663fecaeb57c52260d112d48b6cc8ac33725934f696d169e0000000000ffffffff025476459e0b00000017a914971cde63c4e9339308f9b08a34519cb7c3a243ae8700e1f5050000000017a914681ccd18fac30d2b6fa93b0e9cdb4ea3a12ab6d68700000000","fee":0.00007340,"changepos":0},"error":null,"id":null}

# 发送离线签
curl -H "Content-Type:application/json" -X POST --data '{"method":"sendrawtransaction","params":["020000000101ba55ba5d8c14ff663fecaeb57c52260d112d48b6cc8ac33725934f696d169e0000000000ffffffff025476459e0b00000017a914971cde63c4e9339308f9b08a34519cb7c3a243ae8700e1f5050000000017a914681ccd18fac30d2b6fa93b0e9cdb4ea3a12ab6d68700000000"]}' http://admin1:123@127.0.0.1:19001

# 签名
curl -H "Content-Type:application/json" -X POST --data '{"method":"signrawtransaction","params":["020000000101ba55ba5d8c14ff663fecaeb57c52260d112d48b6cc8ac33725934f696d169e0000000000ffffffff0200e1f5050000000017a914681ccd18fac30d2b6fa93b0e9cdb4ea3a12ab6d6875476459e0b00000017a914971cde63c4e9339308f9b08a34519cb7c3a243ae8700000000"]}' http://admin1:123@127.0.0.1:19001
curl -H "Content-Type:application/json" -X POST --data '{"method":"signrawtransactionwithkey","params":["020000000101ba55ba5d8c14ff663fecaeb57c52260d112d48b6cc8ac33725934f696d169e0000000000ffffffff0200e1f5050000000017a914681ccd18fac30d2b6fa93b0e9cdb4ea3a12ab6d6875476459e0b00000017a914971cde63c4e9339308f9b08a34519cb7c3a243ae8700000000"]}' http://admin1:123@127.0.0.1:19001

signrawtransactionwithkey "hexstring" ["privatekey1",...] ( [{"txid":"id","vout":n,"scriptPubKey":"hex","redeemScript":"hex"},...] sighashtype )


curl -H "Content-Type:application/json" -X POST --data '{"method":"dumpprivkey","params":["3G5td6sFojt6RKXz4uR9Tj9Yfv4xosRjQb"]}' http://admin1:123@127.0.0.1:19001

curl --data-binary '{"method": "getrawtransaction","params": ["d1e819eb1c21a70b407227018278cd9d9009ee4f0a975d7dc2395733b6efe8d6",1],"id": "1"}' --header 'Content-Type: text/plain;' http://admin1:123@127.0.0.1:19001

//转账
curl --data-binary '{"method": "sendtoaddress","params": ["2N72Ec5o3t8CKWq9Zb8cLCCZo7tKo1QaT2m",100],"id": "1"}' --header 'Content-Type: text/plain;' http://admin1:123@127.0.0.1:19001
32eb5c5c55aeffa140bdb52b4dbe41e6d74650df2d6f2de9655653900dc13e23
5b352573d381888ef92f65c9b14d1f9bbee9ab43c98ac210bb915040dfeeebe6

