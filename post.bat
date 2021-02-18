@echo off
cd %1
git add .
git commit -m %2
git push -u origin master
echo "Posting successful!"