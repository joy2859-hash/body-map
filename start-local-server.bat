@echo off
cd /d "%~dp0"
echo Starting Human Atlas local preview...
echo.
echo Open this URL in your browser:
echo http://127.0.0.1:8123/
echo.
start "" "http://127.0.0.1:8123/"
py -3 -m http.server 8123 --bind 127.0.0.1
if errorlevel 1 (
  python -m http.server 8123 --bind 127.0.0.1
)
pause
