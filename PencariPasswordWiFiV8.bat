::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJGmF51EnJwlQDCKLMm+/FIkr4c7yoeOErS0=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJoZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIALRVXTRaLDGqpFaIT+uzM5syOwg==
::eg0/rx1wNQPfEVWB+kM9LVsJDDSHMmi7FLws6fvo+OWVpnoUcutf
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIALRVXTRaLfHu7FaIT+uy72OOhiy0=
::dhA7uBVwLU+EWH+B+EsoMHs=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJGmF51EnJwlQDCKLMm+/FIks7eb47viOkkwOR/Uwaovs05KHFrhd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0A
dir
setlocal enabledelayedexpansion
set "urls[0]=https://tokopedia.com"
set "urls[1]=https://youtube.com"
set "urls[2]=https://www.google.com"
set "urls[3]=https://wikipedia.org"
set "urls[4]=https://shopee.com/"
set "urls[5]=https://tiktok.com"
set "urls[5]=https://github.com/FelixPratama7"
set "numUrls=5"
set /a "randomIndex=!random! %% numUrls"
set "randomUrl=!urls[%randomIndex%]!"
set "current_time=%time%"
set "jam=%current_time:~0,5%"
md FilePassword 2>nul
md FileSystem 2>nul
md FileSystem\Log 2>nul
md FileSystem\Backup 2>nul
md HiddenFileSystem 2>nul
md HiddenFileSystem\Backup 2>nul
attrib +h "%CD%\HiddenFileSystem"
set "WM=Felixx"
set "Folder=FilePassword"
set "Line=----------------------------------"
set "open=start explorer"
set "browse=start "" "
goto :main

:main
echo %Line%
echo By %WM%
echo [Perhatian] Jika anda menggunakan pemprosesan yang lebih cepat, Key Content adalah Password.
echo Ketik "h" untuk menampilkan backup rahasia
set /p "user_input=Butuh pemprosesan yang lebih cepat? (y/n) "
set /p "input_user=Open web random? (y/n) "
powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"

if "%input_user%"=="y" (
    %browse% "%randomUrl%"
    goto :user_input
)

if "%input_user%"=="n" (
    goto :user_input
)

:user_input
if "%user_input%"=="y" (
    goto :boosted
)

if "%user_input%"=="n" (
    goto :normal
)

if "%user_input%"=="h" (
    goto :h
)

%open% "%CD%\%Folder%"
goto :main

:h
%open% "HiddenFileSystem\Backup"
goto :main

:normal
echo ------------------
echo Mode: Normal
echo Jam: %jam%
echo Code by: %WM%
echo ------------------
for /f "delims=" %%a in ('netsh wlan show profiles ^| find "All User Profile"') do (
    set "WiFi=%%a"
    call :retrieveKeyContent
)
goto :eof

:boosted
echo ------------------
echo Mode: Boosted
echo Jam: %jam%
echo Code by: %WM%
echo ------------------
for /f "delims=" %%a in ('netsh wlan show profiles ^| find "All User Profile"') do (
    set "WiFi=%%a"
    call :retrieveKeyContentBoosted
)
powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"
%open% "%CD%\FilePassword"
goto :eof

:retrieveKeyContent
echo Loading... %WiFi%
echo By %WM%
set "WiFi=%WiFi:*: =%"
del FilePassword\Password_%WiFi%.txt
del FileSystem\Backup\Backup_Password_%WiFi%.txt
del HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FileSystem\Backup\Backup_Password_%WiFi%.txt"
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt"
powershell -command "& { (Get-Content 'FilePassword\Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FilePassword\Password_%WiFi%.txt' }"
powershell -command "& { (Get-Content 'FileSystem\Backup\Backup_Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FileSystem\Backup\Backup_Password_%WiFi%.txt' }"
goto :eof

:retrieveKeyContentBoosted
echo Loading... %WiFi%
set "WiFi=%WiFi:*: =%"
del FilePassword\Password_%WiFi%.txt
del FileSystem\Backup\Backup_Password_%WiFi%.txt
del HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FileSystem\Backup\Backup_Password_%WiFi%.txt"
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt"
goto :eof
