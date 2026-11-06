
@echo off
setlocal

echo Compiling project...

if not exist "out" mkdir "out"

dir /s /b src\*.java > sources.txt

javac -encoding UTF-8 -cp "lib/*" -d "out" @sources.txt tests\AccountingTests.java

if errorlevel 1 (
    echo COMPILE FAILED
) else (
    echo COMPILED OK. NOW RUN run.bat
)

endlocal
