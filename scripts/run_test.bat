@echo off

REM Set JMeter path (make sure it's accessible to Jenkins)
set JMETER_PATH=C:\JMeter\bin

REM Move to Jenkins workspace
cd /d %WORKSPACE%

REM Create results folder if not exists
if not exist results mkdir results

REM Delete old files
if exist results\result.jtl del /f /q results\result.jtl
if exist results\report rmdir /s /q results\report

REM Run JMeter test
%JMETER_PATH%\jmeter -n -t testplans\Certiplate_Test_Plan.jmx -l results\result.jtl -e -o results\report

echo Test execution completed