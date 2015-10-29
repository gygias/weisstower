::tasklist /FI "IMAGENAME eq mintty.exe" 2>NUL | find /I /N "mintty.exe">NUL
::if "%ERRORLEVEL%"=="0" ( set _MYPOS=840,0 )
::else ( set _MYPOS=0,0 )
F:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico --position 0,0 -
F:\cygwin64\bin\mintty.exe -i /Cygwin-Terminal.ico --position 840,0 -