docker stop nginx
docker rm nginx
docker run \
  --rm \
  -d \
  -p 80:80 \
  -p 443:443 \
  --name nginx \
  --volume $PWD/conf:/etc/nginx \
  --volume /etc/letsencrypt:/etc/letsencrypt \
  --volume $PWD/html:/usr/share/nginx/html \
  nginx