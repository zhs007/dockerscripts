# Docker for tradingdata2 

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
# servaddr for tradingdb2
tradingdb2servaddr: 127.0.0.1:5002
# token for tradingdb2
tradingdb2token: 123456

market: bitmex
symbol: XBTUSD
tags: ['202001']
```

### Start

``` sh
sh start.sh
```

### Stop & Delete

``` sh
sh stop.sh
```