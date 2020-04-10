mkdir comic
docker container stop gcserv
docker container rm gcserv
docker run -d \
    -v $PWD/cfg:/usr/src/app/cfg \
    -v $PWD/comic:/usr/src/app/comic \
    --name gcserv \
    zerrozhao/getcomic