#!/usr/bin/bash
echo "127.0.0.1:9050"
service tor start
echo "Please wait....."
sleep 10
lightgreen='\e[1;32m'
echo -e "$lightgreen" ""
while true; do
service tor reload  
sleep 15
curl --socks5 127.0.0.1:9050 https://check.torproject.org |& grep -Po "(?<=strong>)[\d\.]+(?=</strong)"|sed 's/^/IP Changed with────────────────────█──<><><>───[ /g'|sed 's/$/ ]/g'
done
