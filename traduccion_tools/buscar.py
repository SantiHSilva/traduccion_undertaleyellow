# Con un directorio con muchos archivos de texto, buscar una palabra en todos los archivos
# y mostrar el nombre del archivo y la línea donde se encuentra la palabra.

import os
import sys

def buscar_palabra(directorio, secuencia):
    for archivo in os.listdir(directorio):
        if os.path.isfile(os.path.join(directorio, archivo)):
            with open(os.path.join(directorio, archivo), 'r', encoding="utf8") as f:
                for i, linea in enumerate(f.readlines()):
                    if secuencia in linea:
                        print(f'Encontrado en {archivo} en la línea {i+1}: {linea}')

if __name__ == '__main__':
    os.system('cls')
    if len(sys.argv) <= 0:
        print('Uso: python buscar.py <palabra>')
        sys.exit(1)

    directorio = "C:\\Users\\Silva\\Documents\\Undertale Yellow\\Export_Code"
    
    secuencia = ""
    for i in range(1, len(sys.argv)):
        secuencia += sys.argv[i] + " "
    
    secuencia = secuencia[:-1]
    
    print(f'Buscando "{secuencia}" en {directorio}...')
    buscar_palabra(directorio, secuencia)

# Ejemplo de uso:
# python buscar.py /home/usuario/archivos/ hola