@echo off
color 0A
dir
md FilePassword 2>nul
set "WM=Felixx"

echo By %WM%
echo [Perhatian] Jika anda menggunakan pemprosesan yang lebih cepat, Ket Content adalah Password.
set /p user_input=Butuh pemprosesan yang lebih cepat? (y/n) 

if "%user_input%"=="y" (
    goto :boosted
)
if "%user_input%"=="n" (
    goto :normal
)

:normal
for /f "tokens=5*" %%a in ('netsh wlan show profiles ^| find "All User Profile"') do (
    set "WiFi=%%a"
    call :retrieveKeyContent
)

:boosted
for /f "tokens=5*" %%a in ('netsh wlan show profiles ^| find "All User Profile"') do (
    set "WiFi=%%a"
    call :retrieveKeyContentBoosted
)

powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"

goto :eof
:retrieveKeyContent
echo Loading... %WiFi%
echo By %WM%
del FilePassword\Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
powershell -command "& { (Get-Content 'FilePassword\Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FilePassword\Password_%WiFi%.txt' }"
for %%F in ("FilePassword\Password_%WiFi%.txt") do (
    if %%~zF equ 0 (
        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"
        echo Error! [Percobaan ke 1/3]
        goto tryAgain
    )
)
:retrieveKeyContentBoosted
echo Loading... %WiFi%
echo By %WM%
del FilePassword\Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
for %%F in ("FilePassword\Password_%WiFi%.txt") do (
    if %%~zF equ 0 (
        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"
        echo Error! [Percobaan ke 1/3]
        goto tryAgain
    )
)
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
:tryAgainLagi
del FilePassword\Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
for %%F in ("FilePassword\Password_%WiFi%.txt") do (
    if %%~zF equ 0 (
        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"
        echo Error! [Perbobaan ke 3/3]
    )
)

echo.
