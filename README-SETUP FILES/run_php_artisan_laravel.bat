REM EM_DEV NOTES:
REM --host=%ipv4% means that this .bat file will automatically retrieve the IPv4 Address of your current Ethernet.

@echo off
set "project_path=%~dp0"
cd /d "%project_path%"

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set "ipv4=%%a"
    goto :found
)
:found
set "ipv4=%ipv4: =%"
echo %ipv4%
php artisan serve --host=%ipv4% --port=8000

