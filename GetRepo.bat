@echo off
git init
set CURRENTDIR=%CD%\%1
ECHO ..Looking for %CURRENTDIR%
IF EXIST %CURRENTDIR%\ (
 ECHO %CURRENTDIR% PRESENTS
)ELSE (
 git clone http://104.197.208.192:3000/admin1/%1.git
)
cd %CURRENTDIR%
git pull http://104.197.208.192:3000/admin1/%1.git
cd ..
echo "GET REPOSITORY SUCCESSFUL!"