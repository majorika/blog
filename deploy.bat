@echo off

rmdir /s /q docs

hugo -d docs

git add --all .
git commit -m "rebuilding site"
git push origin master
