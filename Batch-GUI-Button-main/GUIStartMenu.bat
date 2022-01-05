@Echo off
@Mode 48,15
@Title Start Menu
Batbox /h 0

:Loop
Call Button  10 4 "Shutdown" 24 4 "Sleep" 17 8 "  Restart  " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (shutdown /s /f /t 5)
:: Shutdown in 5 sec.
if %errorlevel%==2 (powercfg -hibernate off 
rundll32.exe powrprof.dll,SetSuspendState 0,1,0)
:: Sleep
if %errorlevel%==3 (shutdown -r -t 00)
:: Restart in 0 sec.
goto Loop