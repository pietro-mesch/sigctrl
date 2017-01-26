:: Indexes the current folder for MiKTeX and builds character maps
@echo off

::::::::::::::::::::::::: SET PARAMETERS
SET MIKTEX_VER=2.9
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::













SET SISTEMATEX_PATH=%CD%
echo Indexing SISTeMATeX folder . . .
texhash --register-root=%SISTEMATEX_PATH% && (
echo.
echo Folder indexed successfully.
echo Close this window now if you don't need to map new fonts.
echo.  ) || (
echo.
echo Something went wrong. Check your MiKTeX folder is in the system PATH.
echo.
goto :end )

:fontmapping
pause
echo Building font maps . . .
if not exist "%USERPROFILE%\AppData\Roaming\MiKTeX\%MIKTEX_VER%\miktex\config" md "%USERPROFILE%\AppData\Roaming\MiKTeX\%MIKTEX_VER%\miktex\config"
echo Map roboto.map> "%USERPROFILE%\AppData\Roaming\MiKTeX\%MIKTEX_VER%\miktex\config\updmap.cfg"
initexmf --mkmaps && (
echo Character mapping completed.
echo.) || (
echo Character mapping failed.
echo.
goto :end)

echo ALL GREEN !!!

:end
echo Press any key to close . . .
pause > nul