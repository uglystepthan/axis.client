��&cls
@echo off
@color 2
cls
goto cmd

:cmd
cls
Title axis client
echo. 
echo.
echo. Type "help" for commands
echo.
echo. Type "selfdestruct" for self destruct
echo.
echo.
set /p choose=">"

if /i "%choose%"=="help" (goto modulelist)
if /i "%choose%"=="debug" (goto debugmode)
if /i "%choose%"=="velocity" (goto modulevelocity)
if /i "%choose%"=="misplace" (goto modulemisplace)
if /i "%choose%"=="blinktp" (goto blinkmodule)
if /i "%choose%"=="selfdestruct" (goto self.d)

:blinkmodule
cls
powershell.exe New-NetQosPolicy -Name "iperf3new" -AppPathNameMatchCondition "launcher.exe" -ThrottleRateActionBitsPerSecon 5KB
powershell.exe Remove-NetQosPolicy -Name "iperf3new"
goto cmd


:modulelist
echo.    Combat           Blatant
echo. "autoclicker"      "blinktp"
echo. "misplace"      
echo. "velocity"
echo. 
ping 127.0.0.1 -n 5 >nul
goto cmd


:modulemisplace
cls
(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "realtime"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high
priority"
wmic process where name="launcher.exe" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

wmic process where ProcessId=%pid% CALL setpriority "realtime"
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
goto menuwithmisplace








:modulevelocity
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
for /f "tokens=3" %%a in ('sc queryex "svchost" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
wmic process where name="mqsvc.exe" CALL setpriority "high priority" >nul
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority" >nul
goto menuwithvelocity
































::MENUS



:menuwithvelocity
cls
Title axis client
echo.                                  Enabled Modules:
echo.                                  -Velocity
echo. Type "help" for commands
echo.
echo.
set /p choose=">"

if /i "%choose%"=="help" (goto modulelist)
if /i "%choose%"=="velocity" (goto moduledontenabled)
if /i "%choose%"=="misplace" (goto misplacemodule)



:misplacemodule
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
for /f "tokens=3" %%a in ('sc queryex "svchost" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
wmic process where name="mqsvc.exe" CALL setpriority "high priority" >nul
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority" >nul
cls
(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "realtime"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high
priority"
wmic process where name="launcher.exe" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"
wmic process where name="jcef_helper" CALL setpriority "high"

RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

wmic process where ProcessId=%pid% CALL setpriority "realtime"
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
cls
goto enabled2modules 


:moduledontenabled
cls
echo.
echo.
echo.
echo. You Cant started this module
echo.
echo.   Or its already running
echo.
echo.
echo.
ping 127.0.0.1 -n 5 >nul
goto menuwithvelocity

:menuwithmisplace
cls
Title axis client
echo.                                  Enabled Modules:
echo.                                  -Misplace
echo. Type "help" for commands
echo.
echo.
set /p cmd=">"

if /i "%choose%"=="help" (goto modulelist)
if /i "%choose%"=="misplace" (goto moduledontenabled)
if /i "%choose%"=="velocity" (goto velocitymodule)



:velocitymodule
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
for /f "tokens=3" %%a in ('sc queryex "svchost" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
wmic process where name="mqsvc.exe" CALL setpriority "high priority" >nul
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority" >nul
goto enabled2modules




:moduledontenabled
cls
echo.
echo.
echo.
echo. You Cant started this module
echo.
echo.   Or its already running
echo.
echo.
echo.
ping 127.0.0.1 -n 5 >nul





:enabled2modules
cls
Title axis client
echo.                                  Enabled Modules:
echo.                                  -Velocity
echo. Type "help" for commands         -Misplace
echo.
echo.
ping 127.0.0.1 -n 120 >nul
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
for /f "tokens=3" %%a in ('sc queryex "svchost" ^| findstr "PID"') do (set pid=%%a) >nul
wmic process where ProcessId=%pid% CALL setpriority "Realtime" >nul
wmic process where name="mqsvc.exe" CALL setpriority "high priority" >nul
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority" >nul
set /p cmd=">"

if /i "%choose%"=="misplace" (goto moduledontenabled)
if /i "%choose%"=="velocity" (goto moduledontenabled)


:moduledontenabled
cls
echo.
echo.
echo.
echo. You Cant started this module
echo.
echo.   Or its already running
echo.
echo.
echo.
ping 127.0.0.1 -n 5 >nul
goto enabled2modules







































































































:self.d
@echo off
color c
cls
echo.
echo.     Waiting
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
color c
cls
echo.
echo.     Waiting.
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
color c
cls
echo.
echo.     Waiting..
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
cls
echo.
echo.     Waiting...
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
cls
echo.
echo.     Waiting
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
color c
cls
echo.
echo.     Waiting.
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
color c
cls
echo.
echo.     Waiting..
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
cls
echo.
echo.     Waiting...
echo.
echo.
echo. Dont close this programm
echo.
echo.
echo.
TIMEOUT /T 1 > nul
ipconfig /flushdns
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls
exit
















