#!/usr/bin/env bash

# 查询账户信息
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ"
curl "https://horizon.stellar.org/accounts/GD4PWNM6K7BYWTISGUI2PG6VYMH5VO57GZWLCSU454X32G63ZGQBJ254"

# 查询交易记录
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ/payments?limit=10&orde=desc"
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ/payments?cursor=103936512051126273&limit=100&orde=desc"

