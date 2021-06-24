# 开放端口

```bash
#查询80端口是否开启,自行修改端口号
firewall-cmd --query-port=80/tcp --zone=public

#添加80端口
firewall-cmd --zone=public --add-port=80/tcp --permanent
```
