@echo off
set JMETER_PATH=C:\Users\ashwi\Downloads\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin

REM Run test in non-GUI mode
%JMETER_PATH%\jmeter -n -t ..\testplans\Certiplate_TestPlan.jmx -l ..\results\result.jtl

REM Generate HTML report from the .jtl file
%JMETER_PATH%\jmeter -g ..\results\result.jtl -o ..\results\report

echo HTML report generated at results\report
pause