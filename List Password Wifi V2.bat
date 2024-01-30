@echo off
color 0A
echo Mohon jangan tutup pop up cmd yang muncul di komputer/laptop anda!
timeout /t 1 /nobreak >nul
echo pop up cmd yang muncul di komputer/laptop anda akan hilang secara otomatis!
timeout /t 1 /nobreak >nul
echo kalau ada password wifi yang salah, silahkan lapor ke wa +62 821 3905 8176
timeout /t 1 /nobreak >nul
echo Note:
timeout /t 1 /nobreak >nul
echo - Boleh disebar ke siapa saja (Kecuali guru)
timeout /t 1 /nobreak >nul
echo - Hanya bisa di run di Windows
timeout /t 1 /nobreak >nul 
echo - Kode jangan diganti (Nanti error)
timeout /t 1 /nobreak >nul 
echo - Kalau ada password wifi yang salah atau error, langsung lapor
timeout /t 1 /nobreak >nul
echo - Kalau ada notifikasi antivirus, allow aja (kalo ga nanti error)
timeout /t 1 /nobreak >nul
echo - Jika password wifi angkanya random, silahkan reopen filenya, lakukan berulang kali hingga berubah.
timeout /t 1 /nobreak >nul
echo ------------------------------------------
timeout /t 1 /nobreak >nul
echo Semua password wifi yang ada disini valid!
timeout /t 1 /nobreak >nul
echo Password terakhir di update: 31/12/2023
timeout /t 1 /nobreak >nul
echo By Felixx
timeout /t 10 /nobreak >nul
color FA
del List Password Wifi\V2\Informasi.txt
del List Password Wifi\V2\FOTGPDhIfRGlrvStQRTg.txt
del List Password Wifi\V2\FOTGPDhIfRGlrvStQRTg_.txt
del List Password Wifi\V2\iMgPhbRoFsIRCgYPmizr_.txt
del List Password Wifi\V2\iMgPhbRoFsIRCgYPmizr.txt
set "desktop=%USERPROFILE%\Desktop"
if not exist "%desktop%" (
  echo Desktop directory not found.
  exit /b
)
cd /d "%desktop%"
set "folder=ListPasswordWiFi"
md "List Password Wifi" 2>nul
md "List Password Wifi\V2" 2>nul
setlocal enabledelayedexpansion
set "folderPath=%USERPROFILE%\Desktop\List Password Wifi"
set "systemIconPath=%SystemRoot%\System32\SHELL32.dll"
attrib +s +h "%folderPath%"
echo y | copy /-y "%systemIconPath%" "%folderPath%\desktop.ini"
echo [.ShellClassInfo] > "%folderPath%\desktop.ini"
echo IconResource=%systemIconPath%,0 >> "%folderPath%\desktop.ini"
> "List Password Wifi\V2\SMP PETRA 3 STUDENT.txt" (
  echo Password = pppkp3tr4
)

> "List Password Wifi\V2\ICT Room1.txt" (
  echo Password = xepyerSlY
)

> "List Password Wifi\V2\LAB BAHASA.txt" (
  echo Password = lexepe2155
)

> "List Password Wifi\V2\LibraryP3.txt" (
  echo Password = xa
  qxzsx3
)
start explorer "%userprofile%\Desktop\List Password Wifi\V2"
del List Password Wifi\V2\Informasi.txt
del List Password Wifi\V2\FOTGPDhIfRGlrvStQRTg.txt
del List Password Wifi\V2\FOTGPDhIfRGlrvStQRTg_.txt
del List Password Wifi\V2\iMgPhbRoFsIRCgYPmizr_.txt
del List Password Wifi\V2\iMgPhbRoFsIRCgYPmizr.txt
powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 1' -WindowStyle Minimized}"
powershell -command "& { (Get-Content 'List Password Wifi\V2\ICT Room1.txt' -Raw) -replace 'x', 'M' -replace 'e', 'a' -replace 'p', 'n' -replace 'l', 'B' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V2\ICT Room1.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V2\LAB BAHASA.txt' -Raw) -replace 'x', 'h' -replace 'e', 'a' -replace 'p', 's' -replace 'l', 'b' -replace 'Loading...' , ' ' | Set-Content 'List Password Wifi\V2\LAB BAHASA.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V2\LibraryP3.txt' -Raw) -replace 'x', 'p' -replace 'a', 'e' -replace 'z', 'u' -replace 'q', 'r' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V2\LibraryP3.txt' }"