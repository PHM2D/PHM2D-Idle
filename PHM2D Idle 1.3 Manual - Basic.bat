@echo off
setlocal enabledelayedexpansion
mode 108,28
title PHM2D Idle
cls

:BeginART

:loopART

set /a rand1=%random% %% 1
set /a rand2=%random% %% 16
set HEX=023456789ABCDEF
call set hexcolors=%%HEX:~%rand1%,1%%%%HEX:~%rand2%,1%%
color %hexcolors%

:::
:::                                                                               ,---.          U
:::                                                                              ;     \         ;
:::                                                                          .==\"/==.  `-.___.-'
:::                                                                         ((+) .  .:)
:::                                                                         |`.-(o)-.'|
:::                                                        .-''-.   _______ \/  \_/  \/
::: _________   _...._        .         __  __   ___     .' .-.  )  \  ___ `'.    
::: \        |.'      '-.   .'|        |  |/  `.'   `.  / .'  / /    ' |--.\  \   
:::  \        .'```'.    '.<  |        |   .-.  .-.   '(_/   / /     | |    \  '  
:::   \      |       \     \| |        |  |  |  |  |  |     / /      | |     |  ' 
:::    |     |        |    || | .'''-. |  |  |  |  |  |    / /       | |     |  | 
:::    |      \      /    . | |/.'''. \|  |  |  |  |  |   . '        | |     ' .' 
:::    |     |\`'-.-'   .'  |  /    | ||  |  |  |  |  |  / /    _.-')| |___.' /'  
:::    |     | '-....-'`    | |     | ||__|  |__|  |__|.' '  _.'.-''/_______.'/   
:::   .'     '.             | |     | |               /  /.-'_.'    \_______|/    
::: '-----------'           | '.    | '.             /    _.'                     
:::                         '---'   '---'           ( _.-'                        

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

echo Welcome to the Idle Kingdom...
echo The code is co-created by: "Magoo"

timeout /t 1 > nul

goto Begin

:Begin

echo.
for /L %%e in (1,1,32) do set "commandvar%%e="
for /L %%e in (1,1,32) do (
 set /P CommandVar%%e="Insert ID to Idle %%e: "
echo !Commandvar%%e!>>ID.txt
 if not defined commandvar%%e (
  if %%e==1 goto Begin
  goto startprocs
 )
)

:loop
:startprocs
setlocal EnableDelayedExpansion
echo.
for /L %%e in (1,1,32) do if defined commandvar%%e call start /min "Idle %%e" steam-idle.exe %%commandvar%%e%%

rem wait 300 seconds (5 minutes)
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (300 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop