# mysql的说明

mysql默认是不允许root非本地访问的，一般也不建议使用root账号，所以我们还需要添加账号。

启动好后，先进入容器

```
docker exec -it mysql8 bash
```

然后在mysql里生成账号并匹配权限

```
CREATE USER zhs007@'%' IDENTIFIED BY 'nebulaplay';
grant all privileges on *.* to zhs007@'%' with grant option;
FLUSH PRIVILEGES;
ALTER USER zhs007@'%' IDENTIFIED WITH mysql_native_password BY 'nebulaplay';
```