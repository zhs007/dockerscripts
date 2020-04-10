# Docker for JarvisCrawlerCore

### Install

``` sh
sh pull.sh
```

### Update

``` sh
sh pull.sh
```

### Configuration

配置文件是 ``cfg/service.yaml`` .
第一次启动，需要将例子配置文件复制改名一下。

``` sh
cp cfg/service.yaml.default cfg/service.yaml
```

``` yaml
servAddr: 0.0.0.0:7051
headless: true

slowMo: 10

defaultmobiledevice: iPhone X

clientToken:
  - wzDkh9h2fhfUVuS9jZ8uVbhV3vC5AWX3
```

### Start

``` sh
sh start.sh
```

### Stop & Delete

``` sh
sh stop.sh
```