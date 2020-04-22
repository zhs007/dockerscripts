docker container run -d --rm --name nginx nginx
docker container cp nginx:/etc/nginx .
mv nginx conf
docker container stop nginx