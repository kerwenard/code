# gitbook

* 已知跟node高版本冲突，所以需要使用nvm安装node低版本，详见mvn页

## 常用指令
```bash
	# 安装
	npm install gitbook-cli -g
```

## github的gh-pages分支将会自动创建page页面，同时进行自动同步，一键代码

* 创建完成之后不需要修改主分支，只需要修改gh-page分支
* 保存文件名为*.sh
* 自动上传，自动部署

```bash
# install the plugins and build the static site
gitbook install && gitbook build

# checkout to the gh-pages branch
# git checkout gh-pages

# pull the latest updates
git pull origin gh-pages --rebase

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -a -m "update"

# push to the origin
git push origin gh-pages

# checkout to the master branch
# git checkout master
```
