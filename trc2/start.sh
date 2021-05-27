mkdir output
mkdir logs
docker container stop trc2serv
docker container rm trc2serv
docker run -d \
    -p 3777:3777 \
    --restart=always \
    --name trc2serv \
    -v $PWD/cfg:/app/tr2/cfg \
    -v $PWD/output:/app/tr2/output \
    -v $PWD/logs:/app/tr2/logs \
    zerrozhao/tradingcore2