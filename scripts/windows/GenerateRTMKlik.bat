@echo off
del 7d.txt /Q
dateadd_mod 7
set /p 7dtext= <7d.txt
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\rtmklik.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\rtmklik.xml /Q
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\rtmklik.xml" rtmklik.xml
git add rtmklik.xml
git commit -m "rtmklik EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo "Generated successfully."
echo "Website: rtmklik.rtm.gov.my"
echo "Name: rtmklik"
echo "Commit Name: rtmklik EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT