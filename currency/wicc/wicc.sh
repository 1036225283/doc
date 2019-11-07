#!/usr/bin/env bash

# list address
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"listaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# create address
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"getnewaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# address detail
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"getaccountinfo","params":["wTUrZ7ALaqCDYjSs5hJSuYpU57XZhYGoSs"]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# address private key
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"dumpprivkey","params":["wLKf2NqwtHk3BfzK5wMDfbKYN1SC3weyR4"]}' -H 'content-type:application/json;' http://127.0.0.1:6967
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"dumpprivkey","params":["wNDue1jHcgRSioSDL4o1AzXz3D72gCMkP6"]}' -H 'content-type:application/json;' http://127.0.0.1:6967
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"dumpprivkey","params":["wNuJM44FPC5NxearNLP98pg295VqP7hsqu"]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# create multi address
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"createmulsig","params":[2,["wLKf2NqwtHk3BfzK5wMDfbKYN1SC3weyR4","wNDue1jHcgRSioSDL4o1AzXz3D72gCMkP6","wNuJM44FPC5NxearNLP98pg295VqP7hsqu"]]}' -H 'content-type:application/json;' http://127.0.0.1:6967
{"result":{"addr":"wTUrZ7ALaqCDYjSs5hJSuYpU57XZhYGoSs","script":"020321025a37cb6ec9f63bb17e562865e006f0bafa9afbd8a846bd87fc8ff9e35db1252e21036c5397f3227a1e209952829d249b7ad0f615e43b763ac15e3a6f52627a10df21210376de6a21f63c35a053c849a339598016a0261d6bdc5567adeda0af78b750c4cc"},"error":null,"id":"curltext"}

# send to address
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"submitsendtx","params":["wLKf2NqwtHk3BfzK5wMDfbKYN1SC3weyR4","wTUrZ7ALaqCDYjSs5hJSuYpU57XZhYGoSs","WICC:1000000000:sawi", "WICC:1000000:sawi", "Hello, WaykiChain!"]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# create multiple raw transaction
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"genmulsigtx","params":["020321025a37cb6ec9f63bb17e562865e006f0bafa9afbd8a846bd87fc8ff9e35db1252e21036c5397f3227a1e209952829d249b7ad0f615e43b763ac15e3a6f52627a10df21210376de6a21f63c35a053c849a339598016a0261d6bdc5567adeda0af78b750c4cc","wNuJM44FPC5NxearNLP98pg295VqP7hsqu","WICC:1000000000:sawi", "WICC:10000000:sawi"]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# sign raw transaction
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"signtxraw","params":["07018249045749434383e1ac0001020003045749434382dbea9300000203000300000100000200",["wNuJM44FPC5NxearNLP98pg295VqP7hsqu"]]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# send raw transaction
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"submittxraw","params":["07018a17045749434383e1ac000102000304574943439c8ca4939f0000020300030000014630440220346c368574fa906a701de80f2df00c4303bacca7a897678ce7aa8643cbef2ed102206401d16feaa555708d9f8ce68f362b105e4d87171df824be96130fa6d0db4690000246304402206c029c490021dd9d042306182352afc084233fb9fe69d872bf76661d7edb69e50220372d9d81b9407e7be2217a002478eac7d8edc67f9b10b1cc1944c0f3f40ac4ef"]}' -H 'content-type:application/json;' http://127.0.0.1:6967

