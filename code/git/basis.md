# git基础操作+分支

```bash
# 初始化本地仓库
git init
git add --all
git commit -m "注释"
git remote add origin 仓库url
git push -u origin master

# 拉取远程仓库
git clone 仓库url

# 更新到远程仓库
git add --all
git commit - m "注释"
git push

# 从远程仓库拉取更新
git pull
```

### 分支操作
```bash
# 创建并切换到分支
git checkout -b 分支名

# 查看分支
git branch

# 切换分支
git checkout 分支名

# 合并分支
git merge 另一个分支名

# 删除分支
git branch -d 分支名

# 下载远程仓库最新内容
git fetch --all 
# 把HEAD指向最新的分支，和上面的一起用等于强制pull
git reset --hard origin/master 

# 回退到上个版本
git reset --hard HEAD^       
# 退到/进到 指定commit_id 
git reset --hard commit_id    
# 强制推送
git push origin HEAD --force
```