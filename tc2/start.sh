mkdir output
docker container stop tc2serv
docker container rm tc2serv
docker run -d \
    -p 3777:3777 \
    --name tc2serv \
    -v $PWD/cfg:/app/tr2/cfg \
    -v $PWD/output:/app/tr2/output \
    zerrozhao/tradingcore2