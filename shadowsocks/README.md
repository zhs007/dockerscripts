# Docker for ShadowSocks

这是 ``ShadowSocks`` 的 docker 启动脚本。

### 普通启动脚本

因为大概率下会需要改配置，所以建议将 start.sh 复制一份来使用，这样就不会忘记密码了，而且未来项目更新，也不会产生冲突。

```
cp start.sh mystart.sh
```

脚本内容如下：

``` sh
docker stop ss
docker rm ss
docker run -dt --name ss -p 3721:3721 mritd/shadowsocks \
    -s "-s 0.0.0.0 -p 3721 -m aes-256-cfb -k 123456 --fast-open"
```

一般来说，只需要修改 ``-k 123456`` 里面的密码就可以了。

### kcptun启动脚本

还是建议先

```
cp startsskcptun.sh mystartsskcptun.sh
```

脚本内容如下：

``` sh
docker stop sskcptun
docker rm sskcptun
docker run -d --name sskcptun -p 3619:8388 -p 36191:29900/udp zetaplusae/shadowsocks-kcptun \
    -m 'aes-256-cfb' -p '111111' \
    -s "222222" -c 'aes'
```

其中，主要配置密码就好了，分别是 ``-p '111111'`` 里单引号里面的部分，这个就是配置里的密码。  
然后是 ``-s "222222"`` 里单引号部分，这个一般用来配置到kcptun插件配置里的，很多客户端配置是一个字符串，类似：

```
key=222222;crypt=aes
```

