@echo off
set WATCOM=C:\WATCOM
set PATH=%WATCOM%\BINNT;%WATCOM%\BINW;%PATH%
set INCLUDE=%WATCOM%\H
set LIB=%WATCOM%\LIB386\DOS;%WATCOM%\LIB386

echo === Building sosdigi.lib ===
if not exist tmp mkdir tmp
del /q tmp\*.* 2>nul
cd tmp
..\binextr\binextr.exe -e ..\..\original\descentr.exe -m ..\descentr.map ..\sosdigi.def
if errorlevel 1 (echo ERROR: binextr failed for sosdigi & cd .. & goto :eof)
echo Assembling sosdigi...
for %%i in (*.asm) do (
    echo   %%i
    wasm -zq %%i
    if errorlevel 1 echo WARNING: wasm failed on %%i
)
echo Creating sosdigi.lib...
del ..\sosdigi.lib 2>nul
for %%i in (*.obj) do wlib -q ..\sosdigi.lib +%%i
cd ..
echo sosdigi.lib done.

echo.
echo === Building sosmidi.lib ===
del /q tmp\*.* 2>nul
cd tmp
..\binextr\binextr.exe -e ..\..\original\descentr.exe -m ..\descentr.map ..\sosmidi.def
if errorlevel 1 (echo ERROR: binextr failed for sosmidi & cd .. & goto :eof)
echo Assembling sosmidi...
for %%i in (*.asm) do (
    echo   %%i
    wasm -zq %%i
    if errorlevel 1 echo WARNING: wasm failed on %%i
)
echo Creating sosmidi.lib...
del ..\sosmidi.lib 2>nul
for %%i in (*.obj) do wlib -q ..\sosmidi.lib +%%i
cd ..
echo sosmidi.lib done.

echo.
echo === Results ===
dir sosdigi.lib sosmidi.lib 2>nul
echo.
echo Copy these to C:\descent\LIB\
