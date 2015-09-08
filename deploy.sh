rm -rf public

# Build the project.
hugo

echo -e "\033[0;32mCommitting changes...\033[0m"

# Add changes to git.
git add --all .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Push source and build repos.
git push origin master
git subtree push --prefix public git@github.com:majorika/majorika.github.io.git master --squash

echo -e "\033[0;32mChanges successfully published!\033[0m"
