@echo off
color 0A
rem paling simple
:next
netsh wlan show profile
echo	By Felixx
set /p WiFi=Masukkan nama WiFi: 
netsh wlan show profiles %WiFi% key=clear
echo Ketik . untuk menutup CMD

set /p input = 
if "%input%" === "." goto selesai

:selesai
exit
