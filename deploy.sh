#!/usr/bin/env sh

#确保脚本抛出遇到错误
set -e

#生成静态资源站点
push_addr=`git remote https://github.com/gaoxu2017/fe-spec.git --push origin`
commit_info=`git descrite --all --always --long`
dist_path=`docs\.vuepress\dist`
push_branch=gh-pages

npm run docs:build #生成静态资源站点

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "deploy"

git push -f https://github.com/gaoxu2017/fe-spec.git main:gh-pages

cd-
#删除静态资源文件
# rm -rf $dist_path


# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages