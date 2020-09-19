mkdir output
mkdir logs
docker container stop trdata2
docker container rm trdata2
docker run -d \
    --name trdata2 \
    zerrozhao/tradingdata2