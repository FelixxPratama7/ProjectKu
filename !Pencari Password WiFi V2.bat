@echo off
color 0A

powershell -WindowStyle Minimized -Command "& {Start-Process cmd -ArgumentList '/c ping localhost -n 5' -WindowStyle Minimized}"
md FilePassword 2>nul

echo By Felixx

for /f "tokens=5*" %%a in ('netsh wlan show profiles ^| find "All User Profile"') do (
    set "WiFi=%%a"
    call :retrieveKeyContent
)

goto :eof
:retrieveKeyContent
echo Loading...
del FilePassword\Password_%WiFi%.txt
netsh wlan show profiles name="%WiFi%" key=clear | find "Key Content" > "FilePassword\Password_%WiFi%.txt"
powershell -command "& { (Get-Content 'FilePassword\Password_%WiFi%.txt' -Raw) -replace 'Key Content', 'Password' | Set-Content 'FilePassword\Password_%WiFi%.txt' }"
for %%F in ("FilePassword\Password_%WiFi%.txt") do (
    if %%~zF equ 0 (
        echo Password tidak ditemukan > "FilePassword\Password_%WiFi%.txt"
        echo Error!
    )
)
echo.

:eof
