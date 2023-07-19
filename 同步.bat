@echo off
for /f "tokens=1,2 delims=:{}, " %%A in (.\config\setting.json) do (
    If "%%~A"=="branch" set branch=%%~B
)
echo branch = %branch%
echo run command: "cd /d %USERPROFILE%\.gridea\output\"
cd /d %USERPROFILE%\.gridea\output\
echo run command: "git config --global http.sslverify false" to enable fastgithub
git config --global http.sslverify false
echo run command: "git push -u origin %branch% -f"
echo.
echo.
echo.
git push -u origin %branch% -f
echo.
echo.
echo.
pause