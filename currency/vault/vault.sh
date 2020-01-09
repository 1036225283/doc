document
    https://www.jianshu.com/p/a6903da41080
    hd
        https://blog.csdn.net/opassf/article/details/79978047
    hd code
        https://blog.csdn.net/yujunlong3919/article/details/84562578
install
	export PATH=$PATH:/Users/edz/software/pass/

dev
	vault server -dev
	export VAULT_ADDR='http://127.0.0.1:8200'
	export VAULT_DEV_ROOT_TOKEN_ID="s.XmpNPoi9sRhYtdKHaQhkHP6x"
	http://127.0.0.1:8200

write a secret
	vault kv put secret/hello luck=duck test=test
	vault kv put secret/world luck=duck

read a secret
	vault kv get secret/hello


give a field
	vault kv get -field=luck secret/hello

format json
	vault kv get -format=json secret/hello
	vault kv get -format=json -field=luck secret/hello

del a secret
	vault kv delete secret/hello