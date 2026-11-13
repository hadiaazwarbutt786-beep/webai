@echo off
title Gulabi Glow Boutique Local Server
cd /d "%~dp0"
echo ==============================================
echo  Gulabi Glow - Luxe Lip Nectar Atelier Server
echo ==============================================
echo Opening http://localhost:8000 in your browser...
start http://localhost:8000/
echo Starting local web server...
powershell -ExecutionPolicy Bypass -File "%~dp0server.ps1" -Port 8000
pause
