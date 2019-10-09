@echo off

rmdir /s /q docs

hugo -d docs

del docs\used-opensource\index.*
del docs\what-i-made\index.*
del docs\privacy\index.*

echo "Committing changes..."

git add --all .
git commit -m "rebuilding site %DATE% %TIME%"
git push origin master
