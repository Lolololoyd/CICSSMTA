@echo off
cls
echo CA-Realia CICS build sample application Version 6.0.27
echo Copyright (c) 1993, 1997 Computer Associates International, Inc.
rem
rem BUILDSAM regenerates all of the Sample System Application Files
rem
rem Revision Information
rem ^{File:buildsam.bch}
rem ^{Timestamp:Thu Jun 19 07:39:24 1997}
rem ^{Revision:8.0}
rem
rem Test for valid directories
if .%coblink%==. call real2set
if .%cicslink%==. call real2set
if exist %cicslink%\cacx6exe.lib goto ok
echo %cicslink% directory is not valid for CICS
goto error

:ok
set _step=0
set tmp_cobdirec=%cobdirec%
set cobdirec=
set tmp_copydir=%copydir%
set copydir=
set tmp_objdir=%objdir%
set objdir=
set tmp_lstdir=%lstdir%
set lstdir=
set tmp_mapdir=%mapdir%
set mapdir=
set tmp_dlldir=%dlldir%
set dlldir=
rem
rem Merge Sample into System CSD
set _step=2
call csdin seatwork
if errorlevel 1 goto builderr
rem
rem Generate Sample System Maps
if exist sw00s.bin erase sw00s.bin
if exist sw00s.cob erase sw00s.cob
set _step=3
call bms sw00s
if errorlevel 1 goto builderr

rem Generate Sample System Programs: Translate, Compile, and Link
for %%i in (1 2 3 4) do (
    if exist sm000%%i.dll erase sm000%%i.dll
    if exist sm000%%i.obj erase sm000%%i.obj
    set _step=4
    call cicstran sm000%%i /hvw
    if errorlevel 1 goto builderr
)

rem Generate the main program SM000
if exist sm000.dll erase sm000.dll
if exist sm000.obj erase sm000.obj
set _step=5
call cicstran sm000 /hvw
if errorlevel 1 goto builderr

goto end

:builderr
echo Error occurred at step %_step%
pause
goto end

:error
echo.
echo Please modify the environment values for CICSLINK and COBLINK and re-execute this batch file
goto exit

:end
set cobdirec=%tmp_cobdirec%
set tmp_cobdirec=
set copydir=%tmp_copydir%
set tmp_copydir=
set objdir=%tmp_objdir%
set tmp_objdir=
set lstdir=%tmp_lstdir%
set lstdir=
set mapdir=%tmp_mapdir%
set tmp_mapdir=
set dlldir=%tmp_dlldir%
set tmp_dlldir=

:exit
