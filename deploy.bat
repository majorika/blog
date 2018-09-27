@echo off

hugo -d docs

del public\used-opensource\index.*
del public\what-i-made\index.*

echo "Committing changes..."

git add --all .
git commit -m "rebuilding site %DATE% %TIME%"
git push origin master
