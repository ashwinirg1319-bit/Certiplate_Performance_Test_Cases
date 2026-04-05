@echo off
set JMETER_PATH=C:\Users\ashwi\Downloads\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin

REM Delete old report
rmdir /s /q ..\results\report

REM Run test + generate report together
%JMETER_PATH%\jmeter -n -t ..\testplans\Certiplate_Test_Plan.jmx -l ..\results\result.jtl -e -o ..\results\report

echo HTML report generated at results\report
pause