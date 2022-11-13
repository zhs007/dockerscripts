docker stop v2ray
docker rm v2ray
docker run -dt --name v2ray -p 36191:10000 -v $PWD:/etc/v2ray v2ray/official