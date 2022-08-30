REM -----------------------------------------------
REM SSH-Servers-Windows v1.0
REM by zeamp (www.zpvy.com)
REM -----------------------------------------------
REM Keep a quick list of SSH servers that you can
REM get to using one icon on Windows. Great for those
REM who do not like other full-featured clients or
REM need something ultra portable. This can be
REM packaged and used with SSH keys, etc.
REM -----------------------------------------------
ECHO OFF
CLS
:MENU
ECHO.
ECHO  SSH Server Selection (SSH-Servers-Windows v1.0)
ECHO  -----------------------------------------------
ECHO.

ECHO  1 - SSH Server 1 Name
ECHO  2 - SSH Server 2 Name
ECHO  3 - SSH Server 3 Name
ECHO  E - Exit

ECHO.
SET /P M= Type the server number and press ENTER to connect: 

IF %M%==1 GOTO SSH1
IF %M%==2 GOTO SSH2
IF %M%==3 GOTO SSH3
IF %M%==E GOTO EOF

REM -----------------------------------------------
REM SSH Server List (Edit Connections)
REM -----------------------------------------------

:SSH1
CLS
call ssh -2 -l zeamp shell.server -p 2774
cmd /k

:SSH2
CLS
call ssh user@server.ssh-domain
cmd /k

:SSH3
CLS
call ssh login@xx.xx.xx.xx
cmd /k
