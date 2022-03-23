# 修改dns

## 临时修改

```bash
sudo vim /etc/resolv.conf

nameserver 8.8.8.8 #主DNS
nameserver 8.8.4.4 #备用DNS

```

## 永久修改

```bash
sudo –i
cd /etc/resolvconf/resolv.conf.d
vim base

nameserver 8.8.8.8 #主DNS
nameserver 8.8.4.4 #备用DNS
```