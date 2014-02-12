@echo off
for /f "delims=" %%A in ('dir "%~dp0..\..\npm*" /b') do set "npmPath=%%A"
"%~dp0..\..\%npmPath%\tools\npm.cmd" %*
