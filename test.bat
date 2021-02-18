@goto :Label3
REM
  RELEASE - GENERATING VERSIONS
&REM

:Label
@echo off
@set var=git config --global user.email
%var% 

:Label1
@echo off
echo                                      ---WARNING---
echo.
set /p EMAIL=Enter Email:
set /p USER=Enter User Name:
git config --global user.email %EMAIL%
git config --global user.username %USER%


//SEE IF DIRECTORY EXISTS
:Label3
@echo off
echo "*** WELCOME TO VERSION RELEASE SOFTWARE ***"
git init
set repo=%1
IF "%1"=="" GOTO Continue
set /p repo=Enter Repository Name:

:Continue
git pull http://104.197.208.192:3000/admin1/%repo%.git
set /p version=Enter Version Name:
set /p desc=Enter Version Details:
git tag -a %version% -m %desc%
git push origin %version"
echo "VERSION CREATED SUCCESSFUL!"