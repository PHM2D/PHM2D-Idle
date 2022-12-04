@echo off
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

goto :Begin

:Begin
echo.
echo Basic version: Maximum 30 games
echo Lite  version: Maximum 09 games
echo.
echo Press 1 to select the "Basic" version.
echo Press 2 to select the "Lite" version.
echo.

choice /c 12 /M "Select the 'Basic' or the 'Lite' version: "
:: Note - list ERRORLEVELS in "decreasing" order!
if errorlevel 2 goto lite
if errorlevel 1 goto basic

:basic
set /P CommandVar0=Insert the number of games to idle (min. 1 - max. 30): 
set /P CommandVarC=Please confirm the number you entered: 

if %CommandVarC% NEQ %CommandVar0% (
 echo Insert a matching number between 1~30 for confirmation
 goto Begin
) else if %CommandVarC% GTR 30 (
 echo Maximum number is 30
 goto Begin
) else if %CommandVarC% LSS 0 (
 echo Minimum number is 1
 goto Begin
) else if %CommandVarC% GTR 0 (
 goto commanding
)

:lite
choice /c 123456789 /N /M "Insert the number of games to idle (min. 1 - max. 9): "
set "CommandVar0=%errorlevel%"
choice /c 123456789 /N /M "Please confirm the number you entered: "
set "CommandVarC=%errorlevel%"

if %CommandVarC% NEQ %CommandVar0% (
 echo Insert a matching number between 1~9 for confirmation
 goto Begin
)

:commanding
if %CommandVar0% == 1 set /P CommandVar1=Insert Steam Game ID: 
if %CommandVar0% == 2 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: 
if %CommandVar0% == 3 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: 
if %CommandVar0% == 4 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: 
if %CommandVar0% == 5 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: 
if %CommandVar0% == 6 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: 
if %CommandVar0% == 7 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: 
if %CommandVar0% == 8 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: 
if %CommandVar0% == 9 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: 
if %CommandVar0% == 10 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: 
if %CommandVar0% == 11 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: 
if %CommandVar0% == 12 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID:  
if %CommandVar0% == 13 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: 
if %CommandVar0% == 14 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: 
if %CommandVar0% == 15 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: 
if %CommandVar0% == 16 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: 
if %CommandVar0% == 17 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: 
if %CommandVar0% == 18 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: 
if %CommandVar0% == 19 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: 
if %CommandVar0% == 20 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: 
if %CommandVar0% == 21 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: 
if %CommandVar0% == 22 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: 
if %CommandVar0% == 23 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: 
if %CommandVar0% == 24 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: 
if %CommandVar0% == 25 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: 
if %CommandVar0% == 26 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: & set /P CommandVar26=Insert Steam Game ID: 
if %CommandVar0% == 27 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: & set /P CommandVar26=Insert Steam Game ID: & set /P CommandVar27=Insert Steam Game ID: 
if %CommandVar0% == 28 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: & set /P CommandVar26=Insert Steam Game ID: & set /P CommandVar27=Insert Steam Game ID: & set /P CommandVar28=Insert Steam Game ID: 
if %CommandVar0% == 29 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: & set /P CommandVar26=Insert Steam Game ID: & set /P CommandVar27=Insert Steam Game ID: & set /P CommandVar28=Insert Steam Game ID: & set /P CommandVar29=Insert Steam Game ID: 
if %CommandVar0% == 30 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: & set /P CommandVar10=Insert Steam Game ID: & set /P CommandVar11=Insert Steam Game ID: & set /P CommandVar12=Insert Steam Game ID: & set /P CommandVar13=Insert Steam Game ID: & set /P CommandVar14=Insert Steam Game ID: & set /P CommandVar15=Insert Steam Game ID: & set /P CommandVar16=Insert Steam Game ID: & set /P CommandVar17=Insert Steam Game ID: & set /P CommandVar18=Insert Steam Game ID: & set /P CommandVar19=Insert Steam Game ID: & set /P CommandVar20=Insert Steam Game ID: & set /P CommandVar21=Insert Steam Game ID: & set /P CommandVar22=Insert Steam Game ID: & set /P CommandVar23=Insert Steam Game ID: & set /P CommandVar24=Insert Steam Game ID: & set /P CommandVar25=Insert Steam Game ID: & set /P CommandVar26=Insert Steam Game ID: & set /P CommandVar27=Insert Steam Game ID: & set /P CommandVar28=Insert Steam Game ID: & set /P CommandVar29=Insert Steam Game ID: & set /P CommandVar30=Insert Steam Game ID: 

:loop
start steam-idle.exe %CommandVar1%
if defined commandvar2 start steam-idle.exe %CommandVar2%
if defined commandvar3 start steam-idle.exe %CommandVar3%
if defined commandvar4 start steam-idle.exe %CommandVar4%
if defined commandvar5 start steam-idle.exe %CommandVar5%
if defined commandvar6 start steam-idle.exe %CommandVar6%
if defined commandvar7 start steam-idle.exe %CommandVar7%
if defined commandvar8 start steam-idle.exe %CommandVar8%
if defined commandvar9 start steam-idle.exe %CommandVar9%
if defined commandvar10 start steam-idle.exe %CommandVar10%
if defined commandvar11 start steam-idle.exe %CommandVar11%
if defined commandvar12 start steam-idle.exe %CommandVar12%
if defined commandvar13 start steam-idle.exe %CommandVar13%
if defined commandvar14 start steam-idle.exe %CommandVar14%
if defined commandvar15 start steam-idle.exe %CommandVar15%
if defined commandvar16 start steam-idle.exe %CommandVar16%
if defined commandvar17 start steam-idle.exe %CommandVar17%
if defined commandvar18 start steam-idle.exe %CommandVar18%
if defined commandvar19 start steam-idle.exe %CommandVar19%
if defined commandvar20 start steam-idle.exe %CommandVar20%
if defined commandvar21 start steam-idle.exe %CommandVar21%
if defined commandvar22 start steam-idle.exe %CommandVar22%
if defined commandvar23 start steam-idle.exe %CommandVar23%
if defined commandvar24 start steam-idle.exe %CommandVar24%
if defined commandvar25 start steam-idle.exe %CommandVar25%
if defined commandvar26 start steam-idle.exe %CommandVar26%
if defined commandvar27 start steam-idle.exe %CommandVar27%
if defined commandvar28 start steam-idle.exe %CommandVar28%
if defined commandvar29 start steam-idle.exe %CommandVar29%
if defined commandvar30 start steam-idle.exe %CommandVar30%

rem wait 300 seconds (5 minutes)
setlocal EnableDelayedExpansion
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (300 -1 0) do (
    <nul set /P ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
timeout /t 5
ENDLOCAL
goto loop