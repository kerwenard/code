# 局域网访问

```
mysql -u root -h localhost -p  
```
由上述命令mysql的bash环境，然后执行以下命令：

第一句可能需要执行多次

```bash
create user 'root'@'%' identified by '密码';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
```