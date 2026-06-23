import os

zooFolder = 'Animale_Polare'

if not os.path.exists(zooFolder):
    os.mkdir(zooFolder)
else:
    print('Folderul exista deja, FRAIERE')

fisiere_existente = [file for file in os.listdir(zooFolder) if os.path.isfile(os.path.join(zooFolder, file))]
count = len(fisiere_existente)

file_name = f'{zooFolder}{count:02}.txt'
file_path = os.path.join(zooFolder, file_name)

with open (file_path, 'w') as f:
    f.write('Aici se afla un animal')