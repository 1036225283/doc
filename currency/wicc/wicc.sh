#!/usr/bin/env bash

curl -u Waykichain:admin -d '{"jsonrpc":"2.0","id":"curltext","method":"listaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:8920

curl -u wiccuser:wicc1000 -d '{"jsonrpc":"2.0","id":"curltext","method":"listaddr","params":[]}' -H 'content-type:application/json;' http://127.0.0.1:6968
