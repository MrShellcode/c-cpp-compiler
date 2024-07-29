@echo off

:: Set the path to the MinGW bin directory
set PATH=%PATH%;"C:\MinGW\bin"

:: Check if the file extension is .c or .cpp
if "%~x1" == ".c" (
    gcc %1 -o %~n1.exe
) else if "%~x1" == ".cpp" (
    g++ %1 -o %~n1.exe
) else (
    echo Invalid file extension. Please provide a C or C++ file.
    exit
)
