#!/usr/bin/env bash

python update_list.py -o avax.tokenlist.json -c avax -u https://raw.githubusercontent.com/pangolindex/tokenlists/main/aeb.tokenlist.json --logos
python update_list.py -o matic.tokenlist.json -c matic -u https://unpkg.com/quickswap-default-token-list@1.0.54/build/quickswap-default.tokenlist.json --logos
#python update_list.py -o matic.tokenlist.json -c matic -u https://unpkg.com/@cometh-game/default-token-list@latest/build/comethswap-default.tokenlist.json --logos
python update_list.py -o ftm.tokenlist.json -c ftm --logos
python update_list.py -o heco.tokenlist.json -c heco -u https://raw.githubusercontent.com/mdexSwap/hswap/main/tokenlist.json --logos
python update_list.py -o bsc.tokenlist.json -c bsc -u https://tokens.pancakeswap.finance/pancakeswap-extended.json --logos
python update_list.py -o xdai.tokenlist.json -c xdai -u https://tokens.honeyswap.org --logos
python update_list.py -o fuse.tokenlist.json -c fuse -u https://raw.githubusercontent.com/fuseio/fuseswap-default-token-list/master/build/fuseswap-default.tokenlist.json --logos
python update_list.py -o mumbai.tokenlist.json -c mumbai --logos
python update_list.py -o fuji.tokenlist.json -c fuji --logos
python update_list.py -o ftmtest.tokenlist.json -c ftmtest --logos
python update_list.py -o hecotest.tokenlist.json -c hecotest --logos
python update_list.py -o kcc.tokenlist.json -c kcc --logos
python update_list.py -o arbitrum.tokenlist.json -c arbitrum -u https://bridge.arbitrum.io/token-list-42161.json --logos
python update_list.py -o harmony.tokenlist.json -c harmony -u https://d1xrz6ki9z98vb.cloudfront.net/venomswap/lists/venomswap-default.tokenlist.json --logos
python update_list.py -o okex.tokenlist.json -c okex --logos
python update_list.py -o iotex.tokenlist.json -c iotex --logos
python update_list.py -o hoo.tokenlist.json -c hoo --logos
python update_list.py -o elastos.tokenlist.json -c elastos --logos
python update_list.py -o moonriver.tokenlist.json -c moonriver --logos
python update_list.py -o telos.tokenlist.json -c telos --logos
python update_list.py -o cronos.tokenlist.json -c cronos --logos
python update_list.py -o ethereum.tokenlist.json -c ethereum -u https://www.gemini.com/uniswap/manifest.json --logos

for chain in avax matic ftm heco bsc xdai fuse mumbai fuji ftmtest hecotest arbitrum elastos moonriver ethereum harmony hoo iotex kcc okex telos cronos; do
	rsync -a logos/$chain/ logos/all/
done
