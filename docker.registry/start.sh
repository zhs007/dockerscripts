mkdir registry
docker stop registry
docker rm registry
docker run -d \
  --name registry \
  -v $PWD/registry:/var/lib/registry \
#   -v /etc/letsencrypt:/etc/letsencrypt \
#   -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
#   -e REGISTRY_HTTP_TLS_CERTIFICATE=/etc/letsencrypt/live/dockerhub.heyalgo.io/fullchain.pem \
#   -e REGISTRY_HTTP_TLS_KEY=/etc/letsencrypt/live/dockerhub.heyalgo.io/privkey.pem \
  -p 5000:5000 \
  registry:2