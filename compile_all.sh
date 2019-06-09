#! /bin/bash
echo "pki_abi.json creation"
abigen --abi ./scontract/abi/pki_abi.json --pkg main --type LuxUni_PKI --out bind_pki.go --bin ./scontract/bin/pki_scont.bin
echo "pki_abi.json creation finished"
abigen --abi ./scontract/abi/pki_abi_web.json --pkg main --type LuxUni_PKI_web --out bind_pki_web.go
echo "pki_abi_web.json creation finished"
abigen --abi ./scontract/abi/pki_abi_valid.json --pkg main --type LuxUni_PKI_valid --out bind_pki_valid.go
echo "pki_abi_valid.json creation finished"
go build /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/pki-rest.go /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/bind_pki.go /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/pki_conf.go
echo "pki-rest.go creation finished"
go build /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/pki-web.go /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/bind_pki.go /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/pki_conf.go /Users/ramazangirgin/ramazangirgin_github/pki-blockchain/bind_pki_web.go
echo "pki-web.go finished"
