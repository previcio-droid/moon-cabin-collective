@echo off
echo Syncing Moon Cabin Collective...
git pull origin main --rebase
git add .
git commit -m "Auto-update from local machine"
git push -u origin main
echo Sync Complete!
pause