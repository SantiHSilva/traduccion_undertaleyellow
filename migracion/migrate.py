import os

# Define the paths
copy_code_path = "C:\\Users\\Silva\\Documents\\Undertale Yellow\\traduccion_undertaleyellow\\Copy_Code"
original_code_path = "C:\\Users\\Silva\\Documents\\Undertale Yellow\\traduccion_undertaleyellow\\migracion\\Export_Code"
strings_path = "C:\\Users\\Silva\\Documents\\Undertale Yellow\\traduccion_undertaleyellow\\strings.txt"

os.system("cls")

def esSaltoDeLinea(string):
    return string == '\n' or string == '\r' or string == '\t'

# Read the contents of the strings file
with open(strings_path, 'r', encoding='utf8') as strings_file:
    strings_content = strings_file.read()

filtrado_traducido = []
filtrado_original = []

# Iterate over the files in the copy code directory
for filename in os.listdir(copy_code_path):
    file_path = os.path.join(copy_code_path, filename)
    # Read the contents of the file
    with open(file_path, 'r', encoding='utf8') as file:
        file_content = file.read()
        # Obtener los strings en base a message[0] = "* (Un banco de madera.)", * (Un banco de madera.)
        for i in range(len(file_content)):
            if esSaltoDeLinea(file_content[i]):
                continue
            if file_content[i] == '"':
                filtrado_traducido.append(file_content[i+1:file_content.find('"', i+1)])        
    
    file_path_original = os.path.join(original_code_path, filename)
    #Read the contents of the file
    with open(file_path_original, 'r', encoding='utf8') as file_original:
        file_content_original = file_original.read()
        # Obtener los strings en base a message[0] = "* (Un banco de madera.)", * (Un banco de madera.)
        for i in range(len(file_content_original)):
            if esSaltoDeLinea(file_content_original[i]):
                continue
            if file_content_original[i] == '"':
                filtrado_original.append(file_content_original[i+1:file_content_original.find('"', i+1)])
    
print("-----------------------------------")
print(len(filtrado_traducido))
print(len(filtrado_original))
print("-----------------------------------")
# Diccionario de strings, {original: traducido}
diccionario = {}
for i in range(len(filtrado_original)):
    diccionario[filtrado_original[i]] = filtrado_traducido[i]

# Replace the strings in the strings file
for key in diccionario:
    strings_content = strings_content.replace(key, diccionario[key])

# Write the updated strings content back to the strings file
with open(strings_path, 'w', encoding='utf8') as strings_file:
    strings_file.write(strings_content)

# # Write the updated strings content back to the strings file
# with open(strings_path, 'w', encoding='utf8') as strings_file:
#     strings_file.write(strings_content)
