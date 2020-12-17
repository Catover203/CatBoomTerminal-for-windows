@echo off
GOTO weiter
:setenv
SET "Path=;%~dp0;%~dp0bin\perl;%~dp0bin\apache;%~dp0bin\sendmail;%~dp0bin\webalizer;%Path%"
GOTO :EOF
:weiter
IF "%1" EQU "setenv" (
    ECHO CatBoom Linux Terminal.
	ECHO %~dp0
    CALL :setenv
) ELSE (
    SETLOCAL
    TITLE CatBoom Linux Terminal for Windows
    PROMPT %username%@%computername%:~ 
    START "" /B %COMSPEC% /K "%~f0" setenv
)