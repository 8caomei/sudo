@echo off
echo AppLife.Net
set /p name=请输您的计算机名：
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f >nul 2>nul
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f >nul 2>nul
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f >nul 2>nul
echo.
echo
echo.
echo AppLife.Net
set /p work1=请输入您的工作组名：
wmic computersystem where Name="%COMPUTERNAME%" call JoinDomainOrWorkgroup Name="%work1%"
echo 修改工作组完毕
pause>nul
echo