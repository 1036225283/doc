#!/usr/bin/env bash

# cxc

# 批量创建地址
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "setupkeypairs", "configs": [2] }' -H 'content-type: text/plain;' http://127.0.0.1:7318
			{"result":[{"address":"1HvHEAjhJ35MhfpotMjGo3beWWaSkduW3n","pubkey":"0355d348225453a80e6bcfc9de73617e70c4d72765c563efd22f16deea23f91575","privkey":"L3T3mPAuLsqw8b6wfTLgUka9EARYSAs4c1Emo3szv4qDsko24B2E"},{"address":"1Mf4BvKJS2WX6BfSS8F1hzdHgDCmGenSL8","pubkey":"027973d140b733efb367a12327b6650e6c80b965b3057a0b310b251057c0828946","privkey":"L38HtYTAwfGThc6nuv3Qms8HibtuV8y1KGtwUEGFst6hMtwYmbTC"}],"error":null,"id":"rpccall"}

# 获取基础信息
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showinfo" }' -H 'content-type: text/plain;' http://127.0.0.1:7318
# 创建新的地址
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "addnewaddr" }' -H 'content-type: text/plain;' http://127.0.0.1:7318
			{"result":"1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4","error":null,"id":"rpccall"}
			{"result":"12DB1n56mBzSNtUZq87t6tRx9kc1ra9sPC","error":null,"id":"rpccall"}
# 验证地址
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "validaddr", "configs": ["1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4"] }' -H 'content-type: text/plain;' http://127.0.0.1:7318
 			{"result":{"isvalid":true,"address":"1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4","ismine":true,"iswatchonly":false,"isscript":false,"pubkey":"0283f01fcee0dc3ae1059093e95b6e980b6510cb9c74ef2af16d9294eed03710ca","iscompressed":true,"synchronized":true},"error":null,"id":"rpccall"}

# 查看区块高度
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showchain", "configs": [] }' -H 'content-type: text/plain;' http://127.0.0.1:7318

# 解析区块信息
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showblock", "configs": ["337142"] }' -H 'content-type: text/plain;' http://127.0.0.1:7318

 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showblock", "configs": ["00ec8d574d80b0f6bb671bb31ead66d7edc1c021e2eed1437d02f8e7683406d7"] }' -H 'content-type: text/plain;' http://127.0.0.1:7318

#
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showunspent", "configs": ["1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4"] }' -H 'content-type: text/plain;' http://127.0.0.1:7318


# 查询余额
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showaddrbals" ,"configs":["1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4"]}' -H 'content-type: text/plain;' http://127.0.0.1:7318
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showallbals" ,"configs":["1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4"]}' -H 'content-type: text/plain;' http://127.0.0.1:7318

# 根据txId查询交易信息
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showdeal" ,"configs":["bde6d0f88db0e3f9f7232d140132758e70f1cbfddbe71edcdf4eae5d1ec13ff7"]}' -H 'content-type: text/plain;' http://127.0.0.1:7318

 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showrawdeal" ,"configs":["bde6d0f88db0e3f9f7232d140132758e70f1cbfddbe71edcdf4eae5d1ec13ff7",4]}' -H 'content-type: text/plain;' http://127.0.0.1:7318

e6ac41b10fbefba20be433fc1c76632741542cc2391ba0dab042d1f626b3adb0
# 发送交易
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "sendfrom" ,"configs":["5b1f2dc1dac54887ce110d80ecc8996aadd246668dff262f6e95b5631fc8b6e4"]}' -H 'content-type: text/plain;' http://127.0.0.1:7318
 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "send" ,"configs":["12DB1n56mBzSNtUZq87t6tRx9kc1ra9sPC",1]}' -H 'content-type: text/plain;' http://127.0.0.1:7318
{"result":"bde6d0f88db0e3f9f7232d140132758e70f1cbfddbe71edcdf4eae5d1ec13ff7","error":null,"id":"rpccall"}
 addr1 addr2

 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "setupkeypairs", "configs": [2] }' -H 'content-type: text/plain;' http://47.90.97.226:7518



 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "validaddr", "configs": ["1BH3QE3YiVztUKrBMsbGdkhe9XhiRvTLE4"] }' -H 'content-type: text/plain;' http://127.0.0.1:7318


 curl --user chaoexcxcu:sljdlf8dsf --data-binary '{"jsonrpc": "2.0", "id":"rpccall", "method": "showchain", "configs": [] }' -H 'content-type: text/plain;' http://47.90.97.226:7318

