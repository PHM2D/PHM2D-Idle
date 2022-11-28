@echo off
mode 108,28
cls

:BeginART

:loopART

set /a num=(%Random% %%9)+1

color %num%

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
choice /c 123456789 /M "Insert the number of games to idle (min. 1 - max. 9): "
set "CommandVar0=%errorlevel%"
choice /c 123456789 /M "Please confirm the number you entered: "
set "CommandVarC=%errorlevel%"

if %CommandVarC% NEQ %CommandVar0% (
 echo Insert a matching number between 1~9 for confirmation
 goto Begin
)

if %CommandVar0% == 1 set /P CommandVar1=Insert Steam Game ID: 
if %CommandVar0% == 2 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: 
if %CommandVar0% == 3 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: 
if %CommandVar0% == 4 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: 
if %CommandVar0% == 5 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: 
if %CommandVar0% == 6 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: 
if %CommandVar0% == 7 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: 
if %CommandVar0% == 8 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: 
if %CommandVar0% == 9 set /P CommandVar1=Insert Steam Game ID: & set /P CommandVar2=Insert Steam Game ID: & set /P CommandVar3=Insert Steam Game ID: & set /P CommandVar4=Insert Steam Game ID: & set /P CommandVar5=Insert Steam Game ID: & set /P CommandVar6=Insert Steam Game ID: & set /P CommandVar7=Insert Steam Game ID: & set /P CommandVar8=Insert Steam Game ID: & set /P CommandVar9=Insert Steam Game ID: 

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

rem wait 300 seconds (5 minutes)
setlocal EnableDelayedExpansion
for /F %%# in ('copy /Z "%~dpf0" NUL') do set "CR=%%#"
for /L %%n in (300 -1 0) do (
    <nul set /p ".=Countdown [%%n] !CR!"
    ping localhost -n 2 > nul
 tasklist /fi "imagename eq steam-idle.exe" |find ":" > nul
 if NOT errorlevel 1 goto Begin
)
taskkill /f /im steam-idle.exe
timeout /t 5
goto loop