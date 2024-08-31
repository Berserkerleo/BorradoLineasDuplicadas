# Script de borrado de líneas duplicadas.

Este script en Batch permite realizar tres tareas principales en archivos de texto:

1. **Desencriptar** archivos utilizando el algoritmo 3DES.
2. **Borrar líneas duplicadas** en archivos de texto.
3. **Encriptar** archivos utilizando el algoritmo 3DES.

## Descripción del Script

### Funcionamiento General

El script proporciona un menú interactivo para que el usuario elija una de las siguientes opciones:

1. Desencriptar un archivo.
2. Borrar líneas duplicadas en un archivo.
3. Encriptar un archivo.
4. Salir del script.

### Instrucciones

1. **Ruta de los Archivos**:
   - Al inicio, se solicita al usuario que ingrese la ruta del archivo que se desea procesar.

2. **Menú de Opciones**:
   - **Desencriptar**: Utiliza el comando `tripledes.exe -d` para desencriptar el archivo especificado. Luego pregunta si desea borrar las líneas duplicadas.
   - **Borrar Líneas Duplicadas**: Lee el archivo y crea un archivo temporal sin las líneas duplicadas. Luego, reemplaza el archivo original con el archivo temporal.
   - **Encriptar**: Utiliza el comando `tripledes.exe -e` para encriptar el archivo especificado. Después de encriptar el archivo, vuelve al menú principal.

3. **Proceso de Encriptación y Desencriptación**:
   - Los comandos de encriptación y desencriptación se ejecutan en el directorio `c:\pmt\Aplicacion\Tools\Cifrar`, utilizando el archivo ejecutable `tripledes.exe`.

4. **Borrar Líneas Duplicadas**:
   - El script compara cada línea del archivo con un archivo temporal y elimina las líneas duplicadas. Después de procesar el archivo, se ofrece la opción de encriptar el archivo.

5. **Salir**:
   - Termina la ejecución del script.

