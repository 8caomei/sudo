@echo off
echo AppLife.Net
set /p name=�������ļ��������
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f >nul 2>nul
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f >nul 2>nul
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f >nul 2>nul
echo.
echo
echo.
echo AppLife.Net
set /p work1=���������Ĺ���������
wmic computersystem where Name="%COMPUTERNAME%" call JoinDomainOrWorkgroup Name="%work1%"
echo �޸Ĺ��������
pause>nul
echo