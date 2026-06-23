import os

count = (file for file in os.listdir('dateUtile') if file.endswith('.png'))

print('Fisierele cu extensia .png sunt: ')
for file in count:
    print(file)