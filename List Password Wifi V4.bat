@echo off
color 0A
del List Password Wifi\V4\Informasi.txt
del List Password Wifi\V4\FOTGPDhIfRGlrvStQRTg.txt
del List Password Wifi\V4\FOTGPDhIfRGlrvStQRTg_.txt
del List Password Wifi\V4\iMgPhbRoFsIRCgYPmizr_.txt
del List Password Wifi\V4\iMgPhbRoFsIRCgYPmizr.txt
set "desktop=%USERPROFILE%\Desktop"
if not exist "%desktop%" (
  echo Desktop directory not found.
  exit /b
)
cd /d "%desktop%"
set "folder=ListPasswordWiFi"
md "List Password Wifi" 2>nul
md "List Password Wifi\V4" 2>nul
setlocal enabledelayedexpansion
set "folderPath=%USERPROFILE%\Desktop\List Password Wifi"
set "systemIconPath=%SystemRoot%\System32\SHELL32.dll"
attrib +s +h "%folderPath%"
echo y | copy /-y "%systemIconPath%" "%folderPath%\desktop.ini"
echo [.ShellClassInfo] > "%folderPath%\desktop.ini"
echo IconResource=%systemIconPath%,0 >> "%folderPath%\desktop.ini"
> "List Password Wifi\V4\SMP PETRA 3 STUDENT.txt" (
  echo Password = pppkp3tr4
)

> "List Password Wifi\V4\ICT Room1.txt" (
  echo Password = xeqyerSlY
)

> "List Password Wifi\V4\LAB BAHASA.txt" (
  echo Password = lexeqe2155
)

> "List Password Wifi\V4\LibraryP3.txt" (
  echo Password = xaqxzsx3
)
powershell -command "& { (Get-Content 'List Password Wifi\V4\ICT Room1.txt' -Raw) -replace 'x', 'M' -replace 'e', 'a' -replace 'q', 'n' -replace 'l', 'B' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V4\ICT Room1.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V4\LAB BAHASA.txt' -Raw) -replace 'x', 'h' -replace 'e', 'a' -replace 'q', 's' -replace 'l', 'b' -replace 'Loading...' , ' ' | Set-Content 'List Password Wifi\V4\LAB BAHASA.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V4\LibraryP3.txt' -Raw) -replace 'x', 'p' -replace 'a', 'e' -replace 'z', 'u' -replace 'q', 'r' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V4\LibraryP3.txt' }"
echo - 
echo -
echo - 
echo - 
echo -
echo - 
echo - 
echo -
echo - 
echo - 
echo -
echo - 
echo Mohon jangan tutup pop up cmd yang muncul di komputer/laptop anda!
echo pop up cmd yang muncul di komputer/laptop anda akan hilang secara otomatis!
echo kalau ada password wifi yang salah, silahkan lapor ke wa +62 821 3905 8176
echo Note:
echo - Boleh disebar ke siapa saja (Kecuali guru)
echo - Hanya bisa di run di Windows 
echo - Kode jangan diganti (Nanti error)
echo - Kalau ada password wifi yang salah atau error, langsung lapor
echo - Kalau ada notifikasi antivirus, allow aja (kalo ga nanti error)
echo - Jika password wifi angkanya random, silahkan reopen filenya, lakukan berulang kali hingga berubah.
echo ------------------------------------------
echo Semua password wifi yang ada disini valid!
echo Password terakhir di update: 31/12/2023
echo By Felixx
echo List Password Wifi:
echo 1. SMP PETRA 3 STUDENT
echo 2. ICT Room1
echo 3. LAB BAHASA
echo 4. Libraryp3
set /p input= Pilih (1/2/3/4): 

if /i "%input%"=="1" goto aa
if /i "%input%"=="2" goto bb
if /i "%input%"=="3" goto cc
if /i "%input%"=="4" goto dd

:aa
start explorer "List Password Wifi\V4\SMP PETRA 3 STUDENT.txt"
goto end

:bb
start explorer "List Password Wifi\V4\ICT Room1.txt"
goto end

:cc
start explorer "List Password Wifi\V4\LAB BAHASA.txt"
goto end

:dd
start explorer "List Password Wifi\V4\Libraryp3.txt"
goto end

:end

del List Password Wifi\V4\Informasi.txt
del List Password Wifi\V4\FOTGPDhIfRGlrvStQRTg.txt
del List Password Wifi\V4\FOTGPDhIfRGlrvStQRTg_.txt
del List Password Wifi\V4\iMgPhbRoFsIRCgYPmizr_.txt
del List Password Wifi\V4\iMgPhbRoFsIRCgYPmizr.txt
powershell -command "& { (Get-Content 'List Password Wifi\V4\ICT Room1.txt' -Raw) -replace 'x', 'M' -replace 'e', 'a' -replace 'q', 'n' -replace 'l', 'B' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V4\ICT Room1.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V4\LAB BAHASA.txt' -Raw) -replace 'x', 'h' -replace 'e', 'a' -replace 'q', 's' -replace 'l', 'b' -replace 'Loading...' , ' ' | Set-Content 'List Password Wifi\V4\LAB BAHASA.txt' }"
powershell -command "& { (Get-Content 'List Password Wifi\V4\LibraryP3.txt' -Raw) -replace 'x', 'p' -replace 'a', 'e' -replace 'z', 'u' -replace 'q', 'r' -replace 'Loading...' , ' '  | Set-Content 'List Password Wifi\V4\LibraryP3.txt' }"