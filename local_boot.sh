-------------------------
Boot Private Ethereum
-------------------------
geth --port 3000 --networkid 58343 --nodiscover --datadir=./blkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --rpcapi "eth,net,web3,personal,miner"  --ipcpath "geth.ipc" --unlock 0
password => seed

eth attach http://127.0.0.1:8543
> miner.start()
-------------------------

-------------------------
Start Pki Blockchain
-------------------------
./pki-web
./pki-rest
http://localhost:8081/pki-test

go build /Users/ramazangirgin/certledger/external/pki-blockchain/pki-rest.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki.go /Users/ramazangirgin/certledger/external/pki-blockchain/pki_conf.go

go build /Users/ramazangirgin/certledger/external/pki-blockchain/pki-web.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki.go /Users/ramazangirgin/certledger/external/pki-blockchain/pki_conf.go /Users/ramazangirgin/certledger/external/pki-blockchain/bind_pki_web.go

