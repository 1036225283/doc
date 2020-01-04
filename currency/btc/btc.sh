#!/usr/bin/env bash
curl -H "Content-Type:application/json" -X POST --data '{"method":"listtransactions","params":["*",10]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"getblockcount","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"gettransaction","params":["3fda7543c316b6ff673e85c0cac3b6ae75699768a83b53f2842545b164f50b12"]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"listaccounts","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"getbalance","params":[]}' http://admin1:123@127.0.0.1:19001

curl -H "Content-Type:application/json" -X POST --data '{"method":"dumpprivkey","params":["3G5td6sFojt6RKXz4uR9Tj9Yfv4xosRjQb"]}' http://admin1:123@127.0.0.1:19001

curl --data-binary '{"method": "getrawtransaction","params": ["d1e819eb1c21a70b407227018278cd9d9009ee4f0a975d7dc2395733b6efe8d6",1],"id": "1"}' --header 'Content-Type: text/plain;' http://admin1:123@127.0.0.1:19001

//转账
curl --data-binary '{"method": "sendtoaddress","params": ["1Mz1XTGZJJcErZmL4BXvJKDXWmQgw72LYF",0.1],"id": "1"}' --header 'Content-Type: text/plain;' http://admin1:123@127.0.0.1:19001


curl -H "Content-Type:application/json" -X POST --data '{"method":"getnewaddress","params":[]}' http://admin1:123@127.0.0.1:19001

{"result":"2N3ZTZPPfLbxDPHgGsGWUvaxooBTgyWiRof","error":null,"id":null}

# 查找未花费

curl -H "Content-Type:application/json" -X POST --data '{"method":"listunspent","params":[6,9999999]}' http://admin1:123@127.0.0.1:19001

