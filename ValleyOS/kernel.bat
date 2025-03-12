echo off
title ValleyOS
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
    set "DEL=%%a"
)

:extraLoad
echo Loading All Windows
set l=0
call :fileMenu
call :ValleyOS
call :windowMenu
call :editMenu
call :viewMenu
set l=1

:start
cls
color 30
call :ColorText 70 "ValleyOS     File Edit View Window Help"
call :ColorText 77 "fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
call :bottom
call :ColorText 07 "Enter appname or function"
echo.
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
set /p function= 
set ERRORCODETHING=2
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
set ERRORCODETHING=1
goto :proccess

:fileMenu
cls
if %l%==1 color 30
call :ColorText 80 "ValleyOS"
call :ColorText 88 "skibid"
call :ColorText 70 "File"
call :ColorText 88 "y"
call :ColorText 80 "Edit View Window Help"
call :ColorText 88 "fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
echo.
call :ColorText f0 "I File Menu    I"
echo.
call :ColorText 70 "I  New file  I"
call :ColorText 80 " J"
echo.
call :ColorText 70 "I  Save      I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Close     I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %l%==0 goto :eof
call :ColorText 07 "Enter appname or function"
echo.
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
set /p function=
if %function%== close goto :start
if %function%== new goto :debeta
goto :fileMenu

:editMenu
cls
if %l%==1 color 30
call :ColorText 80 "ValleyOS      File"
call :ColorText 88 "y"
call :ColorText 70 "Edit"
call :ColorText 88 "y"
call :ColorText 80 "View Window Help"
call :ColorText 88 "fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
echo.
call :ColorText f0 "I Edit Menu    I"
echo.
call :ColorText 78 "I  undo  I"
call :ColorText 80 " J"
echo.
call :ColorText 78 "I  redo  I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Close     I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %l%==0 goto :eof
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
call :ColorText 07 "Enter appname or function"
echo.
set /p function=
if %function%== close goto :start
goto :editMenu

:viewMenu
cls
if %l%==1 color 30
call :ColorText 80 "ValleyOS      File Edit"
call :ColorText 88 "y"
call :ColorText 70 "View"
call :ColorText 88 "y"
call :ColorText 80 "Window Help"
call :ColorText 88 "fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
echo.
call :ColorText f0 "I View Menu    I"
echo.
call :ColorText 78 "I  fullscreen  I"
call :ColorText 80 " J"
echo.
call :ColorText 78 "I  settings  I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Close     I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %l%==0 goto :eof
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
call :ColorText 07 "Enter appname or function"
echo.
set /p function=
if %function%== close goto :start
goto :viewMenu

:windowMenu
cls
if %l%==1 color 30
call :ColorText 80 "ValleyOS      File Edit View"
call :ColorText 88 "y"
call :ColorText 70 "Window"
call :ColorText 88 "y"
call :ColorText 80 "Help"
call :ColorText 88 "fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh"
echo.
call :ColorText f0 "I Window Menu    I"
echo.
call :ColorText 78 "I  Open New Window  I"
call :ColorText 80 " J"
echo.
call :ColorText 78 "I  task manager  I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Close     I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %l%==0 goto :eof
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
call :ColorText 07 "Enter appname or function"
echo.
set /p function=
if %function%== close goto :start
goto :windowMenu

:Debeta
cls
color 30
call :ColorText 80 "ValleyOS     File Edit View Window Help"
echo.
echo.
call :ColorText f0 "I Debeta New document        I"
echo.
call :ColorText 78 "I  coming soon   I"
call :ColorText 80 " J"
echo.
call :ColorText 70 "I  Save                    I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Close                   I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call :ColorText 07 "Enter appname or function"
echo.
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
set /p function= ""
if %function%== close goto :start
if %function%== new goto :debeta
goto :fileMenu

:FileExplorer
cls
color 30
call :ColorText 80 "ValleyOS     File Edit View Window Help"
echo.
call :ColorText 70 "I File Explorer         I"
call :ColorText 80 " J"
echo.
call :ColorText 70 "I Shutdown            I"
call :ColorText 80 "J"
echo.
call :ColorText 70 "I  Restart            I"
echo.
call :ColorText 70 "I  98os executive     I"
echo.
call :ColorText 70 "I  Close              I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call :ColorText 07 "Enter appname or function"
echo.
set /p function= 
if %function%== close goto :start
if %function%== shutdown exit
if %function%== restart Bootloader.bat
if %function%== 98os (
    echo idk man,
    pause
)
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
goto :FileExplorer

:ValleyOS
cls
if %l%==1 color 30
call :ColorText 80 "ValleyOS     File Edit View Window Help"
echo.
call :ColorText 70 "I Shutdown            I"
call :ColorText 80 " J"
echo.
call :ColorText 70 "I  Restart            I"
call :ColorText 80 "J"
echo.
call :ColorText 78 "I  98os executive     I"
echo.
call :ColorText 70 "I  Close              I"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
if %l%==0 goto :eof
call :ColorText 07 "Enter appname or function"
echo.
set /p function= 
if %function%== close goto :start
if %function%== shutdown goto :shutdown
if %function%== restart Bootloader.bat
if %function%== 98os (
    call :ColorText 07 "Coming soon"
    pause
)
goto :ValleyOS

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
goto :eof

:bottom
echo.
echo.
call :ColorText 33 "WAZ"
call :ColorText EE "II"
echo.
call :ColorText 33 "WAZ"
call :ColorText EE "TIIIIT"
echo.
call :ColorText 33 "WAZ"
call :ColorText 66 "TTTTTT"
echo.
echo.
call :ColorText 07 "File explorer"
echo.
call :ColorText 08 "Coming soon"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
goto :eof

:shutdown
cls
color 07
exit
goto :start

:bluescreenofdeathuhoh
cls
color 10
call :ColorText 70 "ValleyOS has had a fatal error and has to restart."
echo.
call :ColorText 70 "Error code"
call :ColorText 77 "J"
call :ColorText 70 %ERRORCODETHING%
echo.
if %ERRORCODETHING%==1 call :ColorText 70 "batch error"'
if %ERRORCODETHING%==2 call :ColorText 70 "unknown error"
echo.
call :ColorText 70 "press ENTER to restart"
echo.
set /p NOTHING=
bootloader.bat

:proccess
if %function%== file goto :fileMenu
if %function%== edit goto :editMenu
if %function%== valleyos goto :ValleyOS
if %function%== view goto :viewMenu
if %function%== window goto :windowMenu
IF %ERRORLEVEL% == 1 goto :bluescreenofdeathuhoh
goto :start