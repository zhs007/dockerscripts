mkdir output
mkdir logs
docker container stop trdata2
docker container rm trdata2
docker run -d \
    -v $PWD/cfg:/app/tradingdata2/cfg \
    --name trdata2 \
    zerrozhao/tradingdata2