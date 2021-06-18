# ssh相关操作

## 公钥相关

```bash
    # 查看本地ssh公钥
    cat ~/.ssh/id_rsa.pub

    # 如果没有公钥，需要先创建公钥
    ssh-keygen -t rsa
```

## 免密登录

```bash
    # ssh公钥复制到主机，登录名@ip
    ssh-copy-id root@127.0.0.1

    #如果在linux下提示无指令
    yum -y install openssh-clients

    #windows下
    function ssh-copy-id([string]$userAtMachine){
        $publicKey = "$ENV:USERPROFILE" + "/.ssh/id_rsa.pub"
        if (!(Test-Path "$publicKey")){
            Write-Error "ERROR: failed to open ID file '$publicKey': No such file"
        }
        else {
            & cat "$publicKey" | ssh $userAtMachine "umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys || exit 1"
        }
    }
```

## 远程执行服务器脚本

```bash
    # -t为附加脚本指令
    ssh root@xxx -t "/root/scripts/kill_ssh.sh "
```