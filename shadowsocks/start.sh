docker stop ss
docker rm ss
docker run -dt --name ss -p 3721:3721 mritd/shadowsocks \
    -s "-s 0.0.0.0 -p 3721 -m aes-256-cfb -k 123456 --fast-open"