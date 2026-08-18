@echo off
setlocal EnableExtensions
cd /d "%~dp0"

echo ============================================================
echo   MBUX USB Folder Playlist Generator
echo ============================================================
echo.
echo Put this BAT and the PS1 file in the ROOT of your USB drive.
echo.
echo [1] Folder only       - playlist contains files directly in each folder
echo [2] Include subfolders - playlist also contains files below each folder
echo.
choice /C 12 /N /M "Select mode [1/2]: "

if errorlevel 2 (
  set "MODE=Recursive"
) else (
  set "MODE=Direct"
)

echo.
echo Mode: %MODE%
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0MBUX-Folder-Playlists.ps1" -Mode "%MODE%"
set "RC=%ERRORLEVEL%"

echo.
if not "%RC%"=="0" (
  echo ERROR: Playlist generation failed. Exit code: %RC%
) else (
  echo Done. Safely eject the USB drive, then reconnect it to MBUX.
)
echo.
pause
exit /b %RC%
