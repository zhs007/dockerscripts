docker stop spark-master
docker rm spark-master
docker run --name spark-master \
    -h spark-master \
    -v $PWD/app:/app \
    -e ENABLE_INIT_DAEMON=false \
    -d bde2020/spark-master:2.4.5-hadoop2.7