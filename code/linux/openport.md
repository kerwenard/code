# 开放端口

```bash
# 查询80端口是否开启,自行修改端口号
firewall-cmd --query-port=80/tcp --zone=public

# 添加80端口
firewall-cmd --zone=public --add-port=80/tcp --permanent

# 成功后需要重启
init 6

# 如果出现FirewallD is not running
# 查看防火墙状态
systemctl status firewalld

# 开启防火墙
systemctl start firewalld

# 再次查看防火墙状态
systemctl status firewalld

# 关闭防火墙
systemctl stop firewalld
```
