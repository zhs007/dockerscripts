# Docker for nginx 

### Install

``` sh
sh pull.sh
sh build.sh
```

### Update

``` sh
sh pull.sh
```

### Configuration

执行 ``build.sh`` 以后，会生成 ``conf`` 目录，在 ``conf/conf.d`` 里添加域名配置文件即可。

``conf.example`` 里面是一些默认配置的例子，包括 https、ws、wss。

### Start

``` sh
sh start.sh
```

### Stop & Delete

``` sh
sh stop.sh
```