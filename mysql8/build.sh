docker run --rm -p 5759:3306 --name mysql8 -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=nebulaplay -d mysql:8
docker container cp mysql8:/etc/mysql $PWD/conf
docker container stop mysql8