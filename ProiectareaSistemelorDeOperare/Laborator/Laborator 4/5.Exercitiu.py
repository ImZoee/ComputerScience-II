import os
import random

listaReptile = ["Cameleon", "Dragon de Komodo", "Iguana", "Aligator", "Crocodil", "Soparla", "Gecko", "Sapre Boa", "Anaconda", "Piton"]
listaPasari = ["Pescarus", "Lebada", "Corb", "Cuc", "Ciocanitoare", "Cinteza", "Vultur", "Uliu", "Colibri"]
listaPesti = ["Salau", "Somon", "Crap", "Stiuca", "Hamsie", "Pirania", "Sturion", "Biban", "Caracuda"]
listaMamifere = ["Leu", "Tigru", "Pantera", "Leopard", "Maimuta", "Urs", "Lup", "Caine", "Pisica"]

newFolder = ['reptile', 'pasari', 'pesti', 'mamifere']
main_folder = 'Exercitiul 5'


os.mkdir(main_folder)

for folder in newFolder:
    folder_path = os.path.join(main_folder, folder)
    os.mkdir(folder_path)
    
    if folder == 'reptile':
        animal_list = listaReptile
    elif folder == 'pasari':
        animal_list = listaPasari
    elif folder == 'pesti':
        animal_list = listaPesti
    elif folder == 'mamifere':
        animal_list = listaMamifere
    
    for i in range(5):
        file_name = f"{folder}{i}.txt"
        file_path = os.path.join(folder_path, file_name)
        animals = random.sample(animal_list, 4)

        with open(file_path, 'w') as f:
            f.write("\n".join(animals))

