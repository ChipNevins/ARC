@echo off
setlocal enabledelayedexpansion
set INTEXTFILE=LoginLabel.zpl
set OUTTEXTFILE=LoginLabelNew.zpl
del %OUTTEXTFILE%
set SEARCHTEXT=MyValue
set REPLACETEXT=%1
set OUTPUTLINE=

for /f "tokens=1,* delims=¶" %%A in ( '"type %INTEXTFILE%"') do (
SET string=%%A
SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!

echo !modified! >> %OUTTEXTFILE%
)
rem del %INTEXTFILE%
rem rename %OUTTEXTFILE% %INTEXTFILE%                                                              
