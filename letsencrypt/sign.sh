docker run --rm -p 80:80 \
    -p 443:443 \
    -v /etc/letsencrypt:/etc/letsencrypt \
    quay.io/letsencrypt/letsencrypt auth --standalone \
    -m zerrozhao@gmail.com --agree-tos \
    -d www.heyalgo.io