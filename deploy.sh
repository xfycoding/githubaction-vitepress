# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
pnpm run docs:build

# 进入生成的文件夹
cd docs/.vitepress/dist

# 清理 Git 仓库
rm -rf .git

git init

#设置用户名
git config --local user.name xfyCoding
#设置用户邮箱
git config --local user.email 508591736@qq.com

git add -A
git commit -m 'github pages自动化部署'

# git push -f git@github.com:你的git名/你的git项目名.git master:你的git分支
git push -f git@github.com:xfycoding/githubaction-vitepress.git master:github-page

cd -
