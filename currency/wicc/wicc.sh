#!/usr/bin/env bash

# list address
curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"listaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:6967

# create address
curl -u Waykichain:admin -d '{"jsonrpc":"2.0","id":"curltext","method":"getnewaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:6967
