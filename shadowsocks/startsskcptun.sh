docker stop sskcptun
docker rm sskcptun
docker run -d --name sskcptun -p 3619:8388 -p 36191:29900/udp zetaplusae/shadowsocks-kcptun \
    -m 'aes-256-cfb' -p '111111' \
    -s "222222" -c 'aes'