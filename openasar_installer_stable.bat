@echo off
echo Closing Discord... (wait around 5 seconds)

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

C:\Windows\System32\TIMEOUT.exe /t 5 /nobreak > nul 2> nul

echo Installing OpenAsar... (ignore any blue output flashes)
copy /y "%localappdata%\Discord\app-1.0.9188\resources\app.asar" "%localappdata%\Discord\app-1.0.9188\resources\app.asar.backup" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9188\resources\_app.asar" copy /y "%localappdata%\Discord\app-1.0.9188\resources\_app.asar" "%localappdata%\Discord\app-1.0.9188\resources\app.asar.backup" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9188\resources\app.asar.orig" copy /y "%localappdata%\Discord\app-1.0.9188\resources\app.asar.orig" "%localappdata%\Discord\app-1.0.9188\resources\app.asar.backup" > nul 2> nul

powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9188\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9059\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9059\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9058\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9058\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9057\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9057\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9187\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9187\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9186\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9186\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9185\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9185\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9189\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9189\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9190\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9190\resources\app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9191\resources\app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9191\resources\app.asar\"" > nul 2> nul

if exist "%localappdata%\Discord\app-1.0.9188\resources\_app.asar" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9188\resources\_app.asar\"" > nul 2> nul
if exist "%localappdata%\Discord\app-1.0.9188\resources\app.asar.orig" powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9188\resources\app.asar.orig\"" > nul 2> nul

echo Opening Discord...
start "" "%localappdata%\Discord\Update.exe" --processStart Discord.exe > nul 2> nul

C:\Windows\System32\TIMEOUT.exe /t 1 /nobreak > nul 2> nul

echo.
echo.
echo OpenAsar should be installed! You can check by looking for an "OpenAsar" option in your Discord settings.
echo Not installed? Try restarting Discord, running the script again, or if still not join our Discord server.
echo.
echo openasar.dev

echo.
pause
