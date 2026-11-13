@echo off
title Push Gulabi Glow to GitHub
cd /d "%~dp0"
set "PATH=%LOCALAPPDATA%\Programs\Git\cmd;%PATH%"

echo ========================================================
echo  Pushing Gulabi Glow Website to GitHub
echo  Repository: https://github.com/tabvwrk-glitch/websiteclass.git
echo ========================================================
echo.
git add .
git commit -m "Update Gulabi Glow website files" 2>nul
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/tabvwrk-glitch/websiteclass.git

echo.
echo Pushing to GitHub (GitHub sign-in window may appear)...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================================
    echo  SUCCESS! Tamam files GitHub par push ho chuki hain.
    echo  Repo URL: https://github.com/tabvwrk-glitch/websiteclass
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo  Push me masla aya. Agar token required ho toh apna
    echo  GitHub Personal Access Token use karein.
    echo ========================================================
)
echo.
pause
