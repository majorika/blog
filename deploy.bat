@echo off

rmdir /s /q public

hugo

del public\used-opensource\index.*
del public\what-i-made\index.*

echo "Committing changes..."

git add --all .
git commit -m "rebuilding site %DATE% %TIME%"
git push origin master
git subtree push --prefix public git@github.com:majorika/majorika.github.io.git master --squash