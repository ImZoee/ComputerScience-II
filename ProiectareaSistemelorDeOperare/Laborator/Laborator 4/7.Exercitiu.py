import os
import shutil as sh

folderText = {'txt': 'text', 'jpg': 'jpg', 'csv': 'csv'}

for folder in folderText.values(): 
    if not os.path.exists(folder):
        os.mkdir(folder)
    else:
        print('Folderul exista!')

os.chdir('./diverseFisiere/')

for file in os.listdir():
    if os.path.isfile(file):
        nume, extensie = os.path.splitext(file)
        extensie = extensie.lstrip('.')

        if extensie in folderText:
            dest_folder = os.path.join('..', folderText[extensie]) 
            sh.copy(file, os.path.join(dest_folder, file)) 
