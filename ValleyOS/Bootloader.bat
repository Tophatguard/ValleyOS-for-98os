echo off
title ValleyOS
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
    set "DEL=%%a"
)

:start
cls
if exist memory.txt (
    for /F "tokens=1,2 delims=#" %%i in (memory.txt) do set choice= %%i
)
echo "ValleyOS version 1.0"
echo.
echo "Welcome"
echo "-loading..."
echo "|-loading colors..."
echo "|-if you have epilepse type 'Y' if you don't, type 'n' (you cannot change later!)"
if not exist memory.txt (
        set /p input= 
) else (
    set input= %choice%
)
if %input% == y  (
    echo y > memory.txt
    goto :skip
)
if %input% == Y (
    echo y > memory.txt
    goto :skip
)
if %input% == n echo n > memory.txt

color 08
echo "test"

color 19
echo "test"

color 2a
echo "test"

color 3b
echo "test"

color 4c
echo "test"

color 5d
echo "test"

color 6e
echo "test"

color 7f
echo "test"

color 0f

:skip
echo "-loading..."
echo "|-loading colors - done"
kernel.bat


:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof