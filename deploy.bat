@echo off

hugo -d docs

del docs\used-opensource\index.*
del docs\what-i-made\index.*

echo "Committing changes..."

git add --all .
git commit -m "rebuilding site %DATE% %TIME%"
git push origin master
