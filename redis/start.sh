docker stop redis
docker rm redis
docker run -p 5758:6379 \
    -v $PWD/data:/data \
    --name redis \
    -d \
    redis redis-server --appendonly yes