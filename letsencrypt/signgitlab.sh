rm -rf /etc/letsencrypt
docker run --rm -p 80:80 -p 443:443 \
    -v /etc/letsencrypt:/etc/letsencrypt \
    quay.io/letsencrypt/letsencrypt auth --standalone \
    -m zerrozhao@gmail.com --agree-tos \
    -d gitlab.a.com
rm -rf /srv/gitlab/config/ssl/gitlab.a.com.key.bk
mv /srv/gitlab/config/ssl/gitlab.a.com.key /srv/gitlab/config/ssl/gitlab.a.com.key.bk
rm -rf /srv/gitlab/config/ssl/gitlab.a.com.crt.bk
mv /srv/gitlab/config/ssl/gitlab.a.com.crt /srv/gitlab/config/ssl/gitlab.a.com.crt.bk
cp /etc/letsencrypt/archive/gitlab.a.com/fullchain1.pem /srv/gitlab/config/ssl/gitlab.a.com.crt
cp /etc/letsencrypt/archive/gitlab.a.com/privkey1.pem /srv/gitlab/config/ssl/gitlab.a.com.key