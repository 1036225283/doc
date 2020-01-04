#!/usr/bin/env bash

# 查询账户信息
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ"
curl "https://horizon.stellar.org/accounts/GD4PWNM6K7BYWTISGUI2PG6VYMH5VO57GZWLCSU454X32G63ZGQBJ254"

# 查询交易记录
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ/payments?limit=10&orde=desc"
curl "https://horizon.stellar.org/accounts/GAOQPO86RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ/payments?cursor=103936512051126273&limit=100&orde=desc"

# xlm
curl "http://127.0.0.1:8000/transactions?limit=200&order=desc"

curl "http://27.0.0.1:8000/accounts/GD42RQNXTRIW6YR3E2HXV5T2AI27LBRHOERV2JIYNFMXOBA234SWLQQB"
curl "http://127.0.0.1:8000/assets?limit=200&order=desc"
curl "http://127.0.0.1:8000/effects"

//查询账号信息，包含余额
curl https://horizo​​n-testnet.stellar.org/accounts/GDJIGAVVBSNKFOTIS26JVYS5HLOXQXHDHKIGGFUVXIULZH2S2YQTI3PC
curl "https://horizon.stellar.org/accounts/GD42RQNXTRIW6YR3E2HXV5T2AI27LBRHOERV2JIYNFMXOBA234SWLQQB"

curl http://172.31.20.99:8000/accounts/GAOQPO76RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ
        String uri = "/accounts/" + account + "/transactions?limit=100&order=desc";


https://horizon.stellar.org
SDEE5WNHSQ5AKII27QDKGPCLONGYI7DNC6CDEUGQ7J354K5PLQDUBRDW
//根据txid查询交易记录
curl https://horizo​​n.stellar.org/transactions/a53b1f68f9e1b02b75998b7d16a095694890d38d6ebd17ae1056d480e5c92b94
//查看账号的历史交易记录
curl https://horizo​​n.stellar.org/accounts/GD3PWNM6K7BYWTISGUI2PG6VYMH5VO57GZWLCSU454X32G63ZGQBJ254/transactions?limit=10&order=desc

curl https://horizo​​n.stellar.org/accounts/GDP34WXZRCSHVUDQLGKJKOBMS5LOQPHCIADZU5POEF3IICZ7XNQJ65Y6/trades?order=desc

curl http://172.31.20.99:8000/transactions/a53b1f68f9e1b02b75998b7d16a095694890d38d6ebd17ae1056d480e5c92b94
curl http://172.31.20.99:8000/accounts/GAOQPO76RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ
curl http://172.31.20.99:8000/accounts/GAOQPO76RLJQR4WYPZBWEJYA4OPBVNTJLVPTX43UHT45UYYGZAXVIOEJ/transactions?order=desc


SUCCESS! You have a new account :)
{
  "_links": {
    "transaction": {
      "href": "https://horizon-testnet.stellar.org/transactions/914fb3784c5a9d051a74b480ad211fed9090977a48407a46e150de465a7acca7"
    }
  },
  "hash": "914fb3784c5a9d051a74b480ad211fed9090977a48407a46e150de465a7acca7",
  "ledger": 1321640,
  "envelope_xdr": "AAAAAOowOIPr2VZC/UzVwjRXvS+1ZDhFXaK2/0IA5dKiqjs9AAGGoAAO8V8AAAAnAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAEAAAAAEH3Rayw4M0iCLoEe96rPFNGYim8AVHJU0z4ebYZW4JwAAAAAAAAAAEVUqmiKxyfCpTfvGDK1eYcrpZBnFKpi+0PAV9D+3OBKAAAAF0h26AAAAAAAAAAAAqKqOz0AAABAPABeNwSyDz3LYJo6BEM0D4rGBq1mB3scWD9S4v70OPQkTzkNh0GWy4VsbstUzf55qPeCvelKVLZrw/r8jVqdAYZW4JwAAABArp/ygDFVQW/jJ7iB75vLTQTk1re3X84W7RB1pM++v+nWAROvZFGcmKSleyvaDRBSekxTaQ7NKkNMT/TMleXDDA==",
  "result_xdr": "AAAAAAAAAGQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAA=",
  "result_meta_xdr": "AAAAAQAAAAIAAAADABQqqAAAAAAAAAAA6jA4g+vZVkL9TNXCNFe9L7VkOEVdorb/QgDl0qKqOz0AAAAAPB2oSwAO8V8AAAAmAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAABABQqqAAAAAAAAAAA6jA4g+vZVkL9TNXCNFe9L7VkOEVdorb/QgDl0qKqOz0AAAAAPB2oSwAO8V8AAAAnAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAABAAAAAwAAAAMAFCp/AAAAAAAAAAAQfdFrLDgzSIIugR73qs8U0ZiKbwBUclTTPh5thlbgnACp/EYEjVjpAAAAwQAAAMkAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAEAFCqoAAAAAAAAAAAQfdFrLDgzSIIugR73qs8U0ZiKbwBUclTTPh5thlbgnACp/C68FnDpAAAAwQAAAMkAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAFCqoAAAAAAAAAABFVKpoiscnwqU37xgytXmHK6WQZxSqYvtDwFfQ/tzgSgAAABdIdugAABQqqAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAA=="
}

# 第二个地址
SUCCESS! You have a new account :)
{
  "_links": {
    "transaction": {
      "href": "https://horizon-testnet.stellar.org/transactions/4c57589b8f80b1030b9820971cb3bfbef798b4e7f37a368b26adef0f93cf7e83"
    }
  },
  "hash": "4c57589b8f80b1030b9820971cb3bfbef798b4e7f37a368b26adef0f93cf7e83",
  "ledger": 1322045,
  "envelope_xdr": "AAAAABxS2PwK1riSj3FH5OACeGWPsE5OE+rgpi7r8wlYon3LAAGGoAAO8V8AAAAnAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAEAAAAAEH3Rayw4M0iCLoEe96rPFNGYim8AVHJU0z4ebYZW4JwAAAAAAAAAAAtp3GIssPBzF4VpkbTZxb+rRg9SIt5hJZT71eVeDpNpAAAAF0h26AAAAAAAAAAAAliifcsAAABAvTUTBmMGY3wpYryQlJnLb1U/k3vJYYXBLkOPMWBT1/9RTbBi8XYOs2ebNBKNKIFELUCyiV1nq198xPbUyhgzBIZW4JwAAABAPbSCxAZdIIcr3C1yX3WNary/fpAtnBx43bEZ4x9pwYV1YWfbpBFImG9JjTPNqpRzwDYNJZOzsZZannKh/pl4DA==",
  "result_xdr": "AAAAAAAAAGQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAA=",
  "result_meta_xdr": "AAAAAQAAAAIAAAADABQsPQAAAAAAAAAAHFLY/ArWuJKPcUfk4AJ4ZY+wTk4T6uCmLuvzCViifcsAAAAAPCCjkwAO8V8AAAAmAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAABABQsPQAAAAAAAAAAHFLY/ArWuJKPcUfk4AJ4ZY+wTk4T6uCmLuvzCViifcsAAAAAPCCjkwAO8V8AAAAnAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAABAAAAAwAAAAMAFCw2AAAAAAAAAAAQfdFrLDgzSIIugR73qs8U0ZiKbwBUclTTPh5thlbgnACp+y6e+njpAAAAwQAAAMkAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAEAFCw9AAAAAAAAAAAQfdFrLDgzSIIugR73qs8U0ZiKbwBUclTTPh5thlbgnACp+xdWg5DpAAAAwQAAAMkAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAFCw9AAAAAAAAAAALadxiLLDwcxeFaZG02cW/q0YPUiLeYSWU+9XlXg6TaQAAABdIdugAABQsPQAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAA=="
}

SUCCESS! You have a new account :)
{
  "_links": {
    "account": {
      "href": "http://127.0.0.1:8000/accounts/{account_id}",
      "templated": true
    },
    "account_transactions": {
      "href": "http://127.0.0.1:8000/accounts/{account_id}/transactions{?cursor,limit,order}",
      "templated": true
    },
    "assets": {
      "href": "http://127.0.0.1:8000/assets{?asset_code,asset_issuer,cursor,limit,order}",
      "templated": true
    },
    "metrics": {
      "href": "http://127.0.0.1:8000/metrics"
    },
    "order_book": {
      "href": "http://127.0.0.1:8000/order_book{?selling_asset_type,selling_asset_code,selling_asset_issuer,buying_asset_type,buying_asset_code,buying_asset_issuer,limit}",
      "templated": true
    },
    "self": {
      "href": "http://127.0.0.1:8000/"
    },
    "transaction": {
      "href": "http://127.0.0.1:8000/transactions/{hash}",
      "templated": true
    },
    "transactions": {
      "href": "http://127.0.0.1:8000/transactions{?cursor,limit,order}",
      "templated": true
    }
  },
  "horizon_version": "v0.22.1",
  "core_version": "v12.0.0",
  "history_latest_ledger": 665,
  "history_elder_ledger": 2,
  "core_latest_ledger": 665,
  "network_passphrase": "Standalone Network ; February 2017",
  "current_protocol_version": 12,
  "core_supported_protocol_version": 12
}

