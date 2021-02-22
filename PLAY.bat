@echo off

SET Steam_PATH = "E:\Program Files (x86)\Steam\steam.exe"
SET BlackOPSTIM_PATH = "Black Ops TIM.exe"

REM Depending on your machine and your connection, you will have to tweak it : must be when the store page loads up
SET Steam_Launch_Time = 26

SET BlackOPS_Launch_Time = 2

CALL :MainScript
GOTO :EOF

:MainScript
  REM  this is a fix for looping "connecting..." on genuine steam version
  CALL :steamLaunchClean
  REM  Makes sure you run Steam, otherwise modded Black Ops won't launch
  tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
  if "%ERRORLEVEL%"=="1" ( CALL :LaunchSteam )
  CD bin
  CALL :RunProgramAsync "launcher_ldr.exe game_mod.dll ../BlackOps.exe"
  CD ../
  TIMEOUT /t %BlackOPS_Launch_Time % /nobreak
  CALL :RunProgramAsync %BlackOPSTIM_PATH %
GOTO :EOF

:RunProgramAsync
  REM ~sI expands the variable to contain short DOS names only
  start %~s1
GOTO :EOF

:steamLaunchClean
  call %~dp0steam_launch_mods clean
GOTO :EOF

:LaunchSteam
  CALL :RunProgramAsync %Steam_PATH %
  TIMEOUT /t %Steam_Launch_Time % /nobreak
GOTO :EOF
