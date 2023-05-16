@echo off

set "dirInput=input"
set "dirOutput=output"

echo Files in the Download directory:
echo.

call :EchoFileNames "%dirInput%"

echo.
pause
exit /b

:EchoFileNames
for %%A in ("%~1\*") do (
    echo Processing %%~nxA
    ".\bin\cwebp.exe" -q 80 "%dirInput%\%%~nxA" -o "%dirOutput%\%%~nxA.webp" -quiet
)
exit /b
