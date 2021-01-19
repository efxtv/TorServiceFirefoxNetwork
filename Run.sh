#!/bin/bash
echo "127.0.0.1:9050"
lightgreen='\e[1;32m'
echo -e "$lightgreen" ""
while true; do
sudo service tor restart  
sleep 1
date +%T
curl --socks5 127.0.0.1:9050 https://check.torproject.org |& grep -Po "(?<=strong>)[\d\.]+(?=</strong)"|sed 's/^/IP Changed with────────────────────█──<><><>───[ /g'|sed 's/$/ ]/g'
done
