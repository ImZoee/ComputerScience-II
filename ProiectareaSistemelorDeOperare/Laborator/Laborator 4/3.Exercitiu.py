import os

files = [file for file in os.listdir('dateUtile') if os.path.isfile(f"{'dateUtile'}/{file}")]

oldest_file = min(files, key=lambda f: os.stat(f"{'dateUtile'}/{f}").st_ctime)
newest_file = max(files, key=lambda f: os.stat(f"{'dateUtile'}/{f}").st_ctime)

print(f"Cel mai vechi fișier creat este: {oldest_file} la mometul {os.stat(f'{'dateUtile'}/{oldest_file}').st_ctime}")
print(f"Cel mai recent fisier creat este: {newest_file}, la momentul {os.stat(f'{'dateUtile'}/{newest_file}').st_ctime}")
