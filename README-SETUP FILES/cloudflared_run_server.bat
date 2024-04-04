@echo off

REM THIS .bat FILE will run the command 'cloudflared tunnel run mywebsite' automatically
REM EM_DEV NOTES:
REM Move this .bat file to the folder where cloudflared.exe is located, then right-click, and select "Run as administrator."
REM 'mywebsite' is your set website name on the Cloudflare installation command: cloudflared tunnel create [website name]
REM https://www.youtube.com/watch?v=fVBul85jnKs

set "project_path=%~dp0"
cd /d "%project_path%"
.\cloudflared.exe tunnel --protocol http2 run mywebsite
