@echo off
REM ================================================================
REM  Descent 1 DOS Build Script (Open Watcom 2.0 + MASM 6.11)
REM
REM  Edit paths below to match your installation:
REM ================================================================

set WATCOM=C:\Compilers\WATCOM
set MASMDIR=C:\Compilers\masm611
set PATH=%WATCOM%\BINNT;%WATCOM%\BINW;%MASMDIR%\BIN;%PATH%
set INCLUDE=%WATCOM%\H
set LIB=%WATCOM%\LIB386\DOS;%WATCOM%\LIB386

echo === Descent 1 DOS Build (Open Watcom 2.0) ===
echo.

REM Check for original EXE (needed for library extraction)
if not exist original\DESCENTR.EXE (
    echo ERROR: original\DESCENTR.EXE not found!
    echo Place your Descent 1.5 registered EXE in the original\ directory.
    goto :end
)

echo [Step 1] Installing headers...
for %%d in (includes bios misc ui pslib) do (
    cd %%d
    wmake linstallh
    cd ..
)

echo [Step 2] Building engine libraries...
for %%d in (mem misc fix cfile 2d bios iff div vecmat 3d texmap ui) do (
    echo --- Building %%d ---
    cd %%d
    wmake
    if errorlevel 1 (echo ERROR building %%d & cd .. & goto :end)
    wmake linstallh
    cd ..
)

echo [Step 3] Building support tools...
cd support
wmake
if errorlevel 1 (echo ERROR building support tools & cd .. & goto :end)
cd ..

echo [Step 4] Building game executable...
cd main
wmake
if errorlevel 1 (echo ERROR building main & cd .. & goto :end)
cd ..

echo [Step 5] Binding libraries from original EXE...
support\gwbind original\descentr.exe main\descentr.exe

echo.
echo ================================================================
echo  BUILD SUCCESSFUL
echo  Output: main\DESCENTR.EXE
echo ================================================================
goto :end

:end
