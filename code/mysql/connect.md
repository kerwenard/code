# 局域网访问

```bash
create user 'root'@'%' identified by '密码';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
```