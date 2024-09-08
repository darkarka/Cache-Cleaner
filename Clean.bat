@echo off
echo Clearing Cache Memory...
echo -----------------------
echo Clearing Temporary Files...
del /s /q %temp%\*.* >nul
del /s /q C:\Windows\Temp\*.* >nul
echo Temporary Files Cleared.

echo -----------------------
echo Clearing Prefetch Files...
del /s /q C:\Windows\Prefetch\*.* >nul
echo Prefetch Files Cleared.

echo -----------------------
echo Flushing DNS Cache...
ipconfig /flushdns
echo DNS Cache Flushed.

echo -----------------------
echo Stopping Windows Update Service...
net stop wuauserv
echo Clearing Windows Update Cache...
del /s /q C:\Windows\SoftwareDistribution\Download\*.* >nul
net start wuauserv
echo Windows Update Cache Cleared.

echo -----------------------
echo Clearing Explorer Thumbnail Cache...
del /s /f /q %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
echo Explorer Thumbnail Cache Cleared.

echo -----------------------
echo Cache Clearing Completed!
pause
