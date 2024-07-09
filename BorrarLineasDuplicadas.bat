@echo off
Title Script 3DES 1.1

set /p ruta=Ruta de los archivos

:inicio
echo 1. Desencriptar
echo 2. Borrar líneas duplicadas
echo 3. Encriptar
echo 4. Salir
set /p opc=Elija 
if %opc%==2 (goto borrar_lineas_duplicadas) else if %opc%==1 (goto desencriptar) else if %opc%==3 (goto encriptar) else (exit)

:encriptar
cd "c:\pmt\Aplicacion\Tools\Cifrar"
tripledes.exe -e %ruta%
echo Archivo procesado.
goto inicio

:desencriptar
cd "c:\pmt\Aplicacion\Tools\Cifrar"
tripledes.exe -d %ruta%
echo Archivo procesado.
set /p opc=Desea borrar las lineas duplicadas? (s/n)
if %opc%==s (goto borrar_lineas_duplicadas) else (goto inicio)

:borrar_lineas_duplicadas
set "temp_file=%~n1_temp.txt"
for /f "delims=" %%a in (%ruta%) do (
    findstr /x /c:"%%a" %temp_file% >nul
    if errorlevel 1 echo %%a>>%temp_file%
)
move /y %temp_file% %ruta%
echo Archivo procesado.
set /p opc=Desea encriptar el archivo? (s/n)
if %opc%==s (goto encriptar) else (goto inicio)

pause
exit
