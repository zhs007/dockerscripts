docker container stop tc2
docker container rm tc2
docker run -d \
    -p 3777:3777 \
    --name tc2 \
    -v $PWD/cfg:/app/tr2/cfg \
    tradingcore2