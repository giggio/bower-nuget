@echo off
for /f "delims=" %%A in ('dir %~dp0..\..\node.js.* /b') do set "nodePath=%%A"
"%~dp0..\..\%nodePath%\node.exe" "%~dp0..\..\..\node_modules\bower\bin\bower" %*
