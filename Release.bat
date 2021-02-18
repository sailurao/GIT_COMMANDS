@echo off
echo "*** WELCOME TO VERSION RELEASE SOFTWARE ***"
git init
set repo=%1
IF "%1"=="" GOTO Continue
GOTO Continue1
:Continue
set /p repo=Enter Repository Name:
:Continue1
cd %repo%
git pull http://104.197.208.192:3000/admin1/%repo%.git
set /p version=Enter Version Name:
set /p desc=Enter Version Details:
git tag -a %version% -m "%desc%"
git push origin %version%"
echo "VERSION CREATED SUCCESSFUL!"
