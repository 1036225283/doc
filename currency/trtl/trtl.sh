#!/usr/bin/env bash

# trtl

curl -d '{"jsonrpc":"2.0","id":1,"password":"somepassword","method":"getblockcount","params":{}}' http://127.0.0.1:8070/json_rpc

curl -d '{"jsonrpc":"2.0","id":1,"method":"createAddress","params":{}}' http://127.0.0.1:10001/json_rpc
curl -d '{"jsonrpc":"2.0","id":1,"method":"createAddress","params":{}}' http://127.0.0.1:8070/json_rpc
curl -d '{"jsonrpc":"2.0","id":1,"method":"getblockcount","params":{}}' http://127.0.0.1:20000/json_rpc
curl -d '{"jsonrpc":"2.0","id":1,"method":"getblockcount","params":[{"','ght":1}]' http://127.0.0.1:20000/json_rpc
curl -d '{"jsonrpc":"2.0","id":1,"method":"getblockcount","params":[1]' http://127.0.0.1:20000/json_rpc

# 获取区块数量
curl -d '{"jsonrpc":"2.0", "method":"getblockcount", "params":{}}' http://47.90.97.226:11898/json_rpc
	{"jsonrpc":"2.0","result":{"count":1885986,"status":"OK"}}

# 根据高度获取块的hash值
curl -d '{"jsonrpc":"2.0","method":"on_getblockhash","params":[1885986]}' http://localhost:11898/json_rpc
	{"jsonrpc":"2.0","result":"b7e512b1ec708f0f13c41922f97f6fbd45ba4e382c4737653d3ab1bfe0be3f72"}

curl -d '{"jsonrpc":"2.0","method":"on_getblockhash","params":[1885986]}' http://localhost:11898/json_rpc



# 返回一个块的模版
curl -d '{"jsonrpc":"2.0","method":"getblocktemplate","params":{"reserve_size":200,"wallet_address":"TRTLuy78xfeQ9kJ6rr3baDA8pAQQx6CXCJZthxseCerhDLD36UBT5cwbqp8e2rjPmN2hoNj5EgDsQKYButU73ekAZjSnF55ZH7B"}}' http://localhost:20000/json_rpc

# 返回最后一个块
curl -d '{"jsonrpc":"2.0","method":"getlastblockheader","params":{}}' http://localhost:20000/json_rpc

curl -d '{"jsonrpc":"2.0","method":"getblockheaderbyhash","params":{"hash":"b7e512b1ec708f0f13c41922f97f6fbd45ba4e382c4737653d3ab1bfe0be3f72"}}' http://localhost:11898/json_rpc
	{"jsonrpc":"2.0","result":{"block_header":{"block_size":4458,"depth":12,"difficulty":9875531131,"hash":"b7e512b1ec708f0f13c41922f97f6fbd45ba4e382c4737653d3ab1bfe0be3f72","height":1885985,"major_version":6,"minor_version":0,"nonce":268600307,"num_txes":2,"orphan_status":false,"prev_hash":"9ee0a27ceb64da1f83e0d5388b3adec8345309941dddc877e190a68b0466d3f8","reward":2817416,"timestamp":1569724730},"status":"OK"}}


curl -d '{"jsonrpc":"2.0","method":"f_block_json","params":{"hash":"c86f49f8aa1031a90216f8a15c043165b14041caaaf4a430e695be3fe235a58c"}}' http://localhost:11898/json_rpc
curl -d '{"jsonrpc":"2.0","method":"f_block_json","params":{"hash":"f20e072297d96eca876886df083cbd2a702725cc0afe34cb1341d7e590e93698"}}' http://localhost:11898/json_rpc


curl -d '{"jsonrpc":"2.0","id":1,"password":"chexrpcturtle","method":"getTransactions","params":{"firstBlockIndex":1885986,"blockCount":10}}' http://localhost:8070/json_rpc

curl -d '{"jsonrpc":"2.0","method":"f_transaction_json","params":{"hash":"7a7dddfb1ac3feaae506ca22d4a246986276c91cb33412ae4a1700f7ea436387"}}' http://localhost:11898/json_rpc


7a7dddfb1ac3feaae506ca22d4a246986276c91cb33412ae4a1700f7ea436387

curl -d '{"jsonrpc":"2.0","id":1,"method":"getblockcount","params":{}}' http://127.0.0.1:10001/json_rpc

curl -d '{"jsonrpc":"2.0","method":"f_blocks_list_json","params":{"height":1885986}}' http://localhost:11898/json_rpc

