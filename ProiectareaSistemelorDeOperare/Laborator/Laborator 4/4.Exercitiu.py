import os

file = [file for file in os.listdir('dateUtile') if file.endswith('.txt') and os.path.isfile(f"{'dateUtile'}/{file}")]

maxfile = max(file, key=lambda f: os.path.getsize(f"dateUtile/{f}"))
filesize = os.path.getsize(f"{'dateUtile'}/{maxfile}")
print(f"Cel mai mare fisier este: {maxfile} si are {filesize} bytes")
