docker run -it --rm --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly --preferred-challenges dns --manual \
    -d *.heyalgo.io \
    --server https://acme-v02.api.letsencrypt.org/directory