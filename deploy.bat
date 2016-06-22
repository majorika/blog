@echo off

rmdir /s /q public

hugo

git add --all .
git commit -m "rebuilding site %DATE% %TIME%"
git push origin master
git subtree push --prefix public git@github.com:majorika/majorika.github.io.git master --squash