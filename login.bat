@goto :Label1
REM
  This paragraph is comment
  https://sodocumentation.net/batch-file/topic/3152/comments-in-batch-files
  set EMAIL="git config --global user.email"
  echo %email%
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
