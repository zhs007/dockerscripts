# Docker for tradingcore2 

### Install

``` sh
sh pull.sh
```

### Update

``` sh
sh pull.sh
```

### Configuration

The default configuration file is ``cfg/config.yaml`` .  
Before starting for the first time, you need to copy and rename the example configuration file.  

``` sh
cp cfg/config.yaml.default cfg/config.yaml
```


``` yaml
cnfundpath: ./data/cnfund

exchanges:
  - cnfund

bindaddr: 0.0.0.0:3777
# 同时运行的任务数，如果给0，表示是当前cpu数量，大于0且小于cpu数量时，就是实际允许的任务数
# 小于0时，任务数是 cpunums - abs(tasknums)
# -1表示空闲1个cpu
tasknums: -1
tokens:
  - wzDkh9h2fhfUVuS9jZ8uVbhV3vC5AWX3

servs:
  - host: 0.0.0.0:3777
    token: wzDkh9h2fhfUVuS9jZ8uVbhV3vC5AWX3

```

### Start

``` sh
sh start.sh
```

### Stop & Delete

``` sh
sh stop.sh
```