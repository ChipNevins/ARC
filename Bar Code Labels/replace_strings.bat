@echo off
setlocal enabledelayedexpansion
set INTEXTFILE=test.txt
set OUTTEXTFILE=test_out.txt
set SEARCHTEXT=bath
set REPLACETEXT=hello
set OUTPUTLINE=

for /f "tokens=1,* delims=¶" %%A in ( '"type %INTEXTFILE%"') do (
SET string=%%A
SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!

echo !modified! >> %OUTTEXTFILE%
)
del %INTEXTFILE%
rename %OUTTEXTFILE% %INTEXTFILE%