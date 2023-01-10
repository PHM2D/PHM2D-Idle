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

timeout /t 1 > nul

goto Begin

:Begin

echo.
echo Auto
echo.

if not exist ID.txt (
echo Please create "ID.txt" file first and put each ID on a new line. & timeout /t 5 && goto eof
) else if exist ID.txt (
goto auto
)

:auto
< ID.txt (
  set /p commandvar1=
  set /p commandvar2=
  set /p commandvar3=
  set /p commandvar4=
  set /p commandvar5=
  set /p commandvar6=
  set /p commandvar7=
  set /p commandvar8=
  set /p commandvar9=
  set /p commandvar10=
  set /p commandvar11=
  set /p commandvar12=
  set /p commandvar13=
  set /p commandvar14=
  set /p commandvar15=
  set /p commandvar16=
  set /p commandvar17=
  set /p commandvar18=
  set /p commandvar19=
  set /p commandvar20=
  set /p commandvar21=
  set /p commandvar22=
  set /p commandvar23=
  set /p commandvar24=
  set /p commandvar25=
  set /p commandvar26=
  set /p commandvar27=
  set /p commandvar28=
  set /p commandvar29=
  set /p commandvar30=
  set /p commandvar31=
  set /p commandvar32=
)
Call :loop
ENDLOCAL
@ENDLOCAL

:loop
setlocal EnableDelayedExpansion
echo.
start /min steam-idle.exe %CommandVar1%
if defined commandvar2 start /min steam-idle.exe %CommandVar2%
if defined commandvar3 start /min steam-idle.exe %CommandVar3%
if defined commandvar4 start /min steam-idle.exe %CommandVar4%
if defined commandvar5 start /min steam-idle.exe %CommandVar5%
if defined commandvar6 start /min steam-idle.exe %CommandVar6%
if defined commandvar7 start /min steam-idle.exe %CommandVar7%
if defined commandvar8 start /min steam-idle.exe %CommandVar8%
if defined commandvar9 start /min steam-idle.exe %CommandVar9%
if defined commandvar10 start /min steam-idle.exe %CommandVar10%
if defined commandvar11 start /min steam-idle.exe %CommandVar11%
if defined commandvar12 start /min steam-idle.exe %CommandVar12%
if defined commandvar13 start /min steam-idle.exe %CommandVar13%
if defined commandvar14 start /min steam-idle.exe %CommandVar14%
if defined commandvar15 start /min steam-idle.exe %CommandVar15%
if defined commandvar16 start /min steam-idle.exe %CommandVar16%
if defined commandvar17 start /min steam-idle.exe %CommandVar17%
if defined commandvar18 start /min steam-idle.exe %CommandVar18%
if defined commandvar19 start /min steam-idle.exe %CommandVar19%
if defined commandvar20 start /min steam-idle.exe %CommandVar20%
if defined commandvar21 start /min steam-idle.exe %CommandVar21%
if defined commandvar22 start /min steam-idle.exe %CommandVar22%
if defined commandvar23 start /min steam-idle.exe %CommandVar23%
if defined commandvar24 start /min steam-idle.exe %CommandVar24%
if defined commandvar25 start /min steam-idle.exe %CommandVar25%
if defined commandvar26 start /min steam-idle.exe %CommandVar26%
if defined commandvar27 start /min steam-idle.exe %CommandVar27%
if defined commandvar28 start /min steam-idle.exe %CommandVar28%
if defined commandvar29 start /min steam-idle.exe %CommandVar29%
if defined commandvar30 start /min steam-idle.exe %CommandVar30%
if defined commandvar31 start /min steam-idle.exe %CommandVar31%
if defined commandvar32 start /min steam-idle.exe %CommandVar32%

rem wait 10800 seconds (3 hours)
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10800 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop1

:loop1
setlocal EnableDelayedExpansion
echo.
start /min steam-idle.exe %CommandVar1%
if defined commandvar2 start /min steam-idle.exe %CommandVar2%
if defined commandvar3 start /min steam-idle.exe %CommandVar3%
if defined commandvar4 start /min steam-idle.exe %CommandVar4%
if defined commandvar5 start /min steam-idle.exe %CommandVar5%

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
goto loopI-1

:loopI-1
setlocal EnableDelayedExpansion
echo.
start /min steam-idle.exe %CommandVar1%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopI-2

:loopI-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar2 start /min steam-idle.exe %CommandVar2%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopI-3

:loopI-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar3 start /min steam-idle.exe %CommandVar3%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopI-4

:loopI-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar4 start /min steam-idle.exe %CommandVar4%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopI-5

:loopI-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar5 start /min steam-idle.exe %CommandVar5%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop2

:loop2
setlocal EnableDelayedExpansion
echo.
if defined commandvar6 start /min steam-idle.exe %CommandVar6%
if defined commandvar7 start /min steam-idle.exe %CommandVar7%
if defined commandvar8 start /min steam-idle.exe %CommandVar8%
if defined commandvar9 start /min steam-idle.exe %CommandVar9%
if defined commandvar10 start /min steam-idle.exe %CommandVar10%

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
goto loopII-1

:loopII-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar6 start /min steam-idle.exe %CommandVar6%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopII-2

:loopII-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar7 start /min steam-idle.exe %CommandVar7%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopII-3

:loopII-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar8 start /min steam-idle.exe %CommandVar8%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopII-4

:loopII-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar9 start /min steam-idle.exe %CommandVar9%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopII-5

:loopII-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar10 start /min steam-idle.exe %CommandVar10%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop3

:loop3
setlocal EnableDelayedExpansion
echo.
if defined commandvar11 start /min steam-idle.exe %CommandVar11%
if defined commandvar12 start /min steam-idle.exe %CommandVar12%
if defined commandvar13 start /min steam-idle.exe %CommandVar13%
if defined commandvar14 start /min steam-idle.exe %CommandVar14%
if defined commandvar15 start /min steam-idle.exe %CommandVar15%

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
goto loopIII-1

:loopIII-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar11 start /min steam-idle.exe %CommandVar11%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIII-2

:loopIII-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar12 start /min steam-idle.exe %CommandVar12%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIII-3

:loopIII-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar13 start /min steam-idle.exe %CommandVar13%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIII-4

:loopIII-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar14 start /min steam-idle.exe %CommandVar14%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIII-5

:loopIII-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar15 start /min steam-idle.exe %CommandVar15%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop4

:loop4
setlocal EnableDelayedExpansion
echo.
if defined commandvar16 start /min steam-idle.exe %CommandVar16%
if defined commandvar17 start /min steam-idle.exe %CommandVar17%
if defined commandvar18 start /min steam-idle.exe %CommandVar18%
if defined commandvar19 start /min steam-idle.exe %CommandVar19%
if defined commandvar20 start /min steam-idle.exe %CommandVar20%

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
goto loopIV-1

:loopIV-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar16 start /min steam-idle.exe %CommandVar16%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIV-2

:loopIV-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar17 start /min steam-idle.exe %CommandVar17%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIV-3

:loopIV-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar18 start /min steam-idle.exe %CommandVar18%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIV-4

:loopIV-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar19 start /min steam-idle.exe %CommandVar19%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopIV-5

:loopIV-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar20 start /min steam-idle.exe %CommandVar20%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop5

:loop5
setlocal EnableDelayedExpansion
echo.
if defined commandvar21 start /min steam-idle.exe %CommandVar21%
if defined commandvar22 start /min steam-idle.exe %CommandVar22%
if defined commandvar23 start /min steam-idle.exe %CommandVar23%
if defined commandvar24 start /min steam-idle.exe %CommandVar24%
if defined commandvar25 start /min steam-idle.exe %CommandVar25%

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
goto loopV-1

:loopV-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar21 start /min steam-idle.exe %CommandVar21%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopV-2

:loopV-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar22 start /min steam-idle.exe %CommandVar22%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopV-3

:loopV-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar23 start /min steam-idle.exe %CommandVar23%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopV-4

:loopV-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar24 start /min steam-idle.exe %CommandVar24%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopV-5

:loopV-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar25 start /min steam-idle.exe %CommandVar25%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop6

:loop6
setlocal EnableDelayedExpansion
echo.
if defined commandvar26 start /min steam-idle.exe %CommandVar26%
if defined commandvar27 start /min steam-idle.exe %CommandVar27%
if defined commandvar28 start /min steam-idle.exe %CommandVar28%
if defined commandvar29 start /min steam-idle.exe %CommandVar29%
if defined commandvar30 start /min steam-idle.exe %CommandVar30%

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
goto loopVI-1

:loopVI-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar26 start /min steam-idle.exe %CommandVar26%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopVI-2

:loopVI-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar27 start /min steam-idle.exe %CommandVar27%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopVI-3

:loopVI-3
setlocal EnableDelayedExpansion
echo.
if defined commandvar28 start /min steam-idle.exe %CommandVar28%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopVI-4

:loopVI-4
setlocal EnableDelayedExpansion
echo.
if defined commandvar29 start /min steam-idle.exe %CommandVar29%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopVI-5

:loopVI-5
setlocal EnableDelayedExpansion
echo.
if defined commandvar30 start /min steam-idle.exe %CommandVar30%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop7

:loop7
setlocal EnableDelayedExpansion
echo.
if defined commandvar31 start /min steam-idle.exe %CommandVar31%
if defined commandvar32 start /min steam-idle.exe %CommandVar32%

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
goto loopVII-1

:loopVII-1
setlocal EnableDelayedExpansion
echo.
if defined commandvar31 start /min steam-idle.exe %CommandVar31%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loopVII-2

:loopVII-2
setlocal EnableDelayedExpansion
echo.
if defined commandvar32 start /min steam-idle.exe %CommandVar32%

rem wait 10 seconds
echo.
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (10 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
echo.
timeout /t 7
ENDLOCAL
goto loop1