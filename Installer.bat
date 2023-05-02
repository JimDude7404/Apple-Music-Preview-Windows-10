@echo off
pushd %~dp0

:: Check if running with admin privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running with admin privileges...
) else (
    echo Requesting admin privileges...
    powershell -Command "Start-Process '%~0' -Verb runAs"
    exit /b
)

:: Get current directory
SET current_directory=%cd%

:: Kill Gaming Service
powershell -Command "Stop-Service -Name GamingServices"
taskkill /f /im gamingservices.exe >nul 2>&1

:: Patch the .msix package if it's not
del /q /f AM\AppxMetadata* AM\[Content_Types].xml AM\AppxBlockMap.xml AM\AppxSignature.p7x

:: Register AppxManifest.xml
echo Registering AppxManifest.xml...
powershell -Command "Add-AppxPackage -Register '%current_directory%\AM\AppxManifest.xml'"
taskkill /f /im ApplicationFrameHost.exe >nul 2>&1

:: Install dependencies
echo Installing dependencies...
for %%f in ("%~dp0*.appx") do (
    echo Installing "%%~ff"...
    powershell -Command "Add-AppxPackage '%%~ff'"
)
taskkill /f /im ApplicationFrameHost.exe >nul 2>&1

:: Done
echo Apple Music has been installed!
pause
