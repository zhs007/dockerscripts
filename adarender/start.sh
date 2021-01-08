docker stop adarenderserv
docker rm adarenderserv
docker run -d -v $PWD/cfg:/usr/src/app/cfg --name adarenderserv -p 7052:7052 adarender