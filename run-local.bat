@echo off
cd /d "%~dp0"
echo Starting AyuCare at http://localhost:8000
echo Keep this window open while using the website.
python -m http.server 8000
pause
