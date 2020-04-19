# Docker For Let's Encrypt

这是 ``Let's Encrypt`` 的 docker 签名脚本。

### 普通签名脚本

因为大概率下会需要改配置，所以建议将 sign.sh 复制一份来使用，这样如果有多个域名需要签名，会省事一些，而且未来项目更新，也不会产生冲突。

```
cp sign.sh sign.www.heyalgo.io.sh
```

脚本内容如下：

``` sh
docker run --rm -p 80:80 \
    -p 443:443 \
    -v /etc/letsencrypt:/etc/letsencrypt \
    quay.io/letsencrypt/letsencrypt auth --standalone \
    -m zerrozhao@gmail.com --agree-tos \
    -d www.heyalgo.io
```

一般来说，只需要修改 邮件 和 域名 即可。  
注意，会需要80和443端口，所以先停一下nginx服务。

### 泛域名签名脚本

还是建议先

```
cp signdns.sh signdns.heyalgo.io.sh
```

脚本内容如下：

``` sh
docker run -it --rm --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly --preferred-challenges dns --manual \
    -d *.heyalgo.io \
    --server https://acme-v02.api.letsencrypt.org/directory
```

其中，要修改域名，然后会需要修改DNS配置。

### gitlab签名脚本

``gitlab`` 自带了 ``Let's Encrypt``，但其中某个版本更新时，没有及时更新，所以导致签名失败，所以这里提供了特殊的为``gitlab``签名的脚本。

``` sh
rm -rf /etc/letsencrypt
docker run --rm -p 80:80 -p 443:443 \
    -v /etc/letsencrypt:/etc/letsencrypt \
    quay.io/letsencrypt/letsencrypt auth --standalone \
    -m zerrozhao@gmail.com --agree-tos \
    -d gitlab.a.com
rm -rf /srv/gitlab/config/ssl/gitlab.a.com.key.bk
mv /srv/gitlab/config/ssl/gitlab.a.com.key /srv/gitlab/config/ssl/gitlab.a.com.key.bk
rm -rf /srv/gitlab/config/ssl/gitlab.a.com.crt.bk
mv /srv/gitlab/config/ssl/gitlab.a.com.crt /srv/gitlab/config/ssl/gitlab.a.com.crt.bk
cp /etc/letsencrypt/archive/gitlab.a.com/fullchain1.pem /srv/gitlab/config/ssl/gitlab.a.com.crt
cp /etc/letsencrypt/archive/gitlab.a.com/privkey1.pem /srv/gitlab/config/ssl/gitlab.a.com.key
```

这里要改邮件和域名。  
为了省事，每次都会删除 ``/etc/letsencrypt`` 目录。