-------------------------
Boot Private Ethereum
-------------------------
geth --port 3000 --networkid 58343 --nodiscover --datadir=./blkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --rpcapi "eth,net,web3,personal,miner"  --ipcpath "geth.ipc" --unlock 0
password => seed

geth attach http://127.0.0.1:8543
> miner.start()
-------------------------

-------------------------
Start Pki Blockchain
-------------------------
./pki-web
./pki-rest
http://localhost:8081/pki-test

abigen --abi ./scontract/abi/pki_abi.json --pkg main --type LuxUni_PKI --out bind_pki.go --bin ./scontract/bin/pki_scont.bin
abigen --abi ./scontract/abi/pki_abi_web.json --pkg main --type LuxUni_PKI_web --out bind_pki_web.go
abigen --abi ./scontract/abi/pki_abi_valid.json --pkg main --type LuxUni_PKI_valid --out bind_pki_valid.go
go build /Users/ramazangirgin/certledger/external/pki-blockchain/pki-rest.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki.go /Users/ramazangirgin/certledger/external/pki-blockchain/pki_conf.go
go build /Users/ramazangirgin/certledger/external/pki-blockchain/pki-web.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki.go /Users/ramazangirgin/certledger/external/pki-blockchain/pki_conf.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki_web.go

