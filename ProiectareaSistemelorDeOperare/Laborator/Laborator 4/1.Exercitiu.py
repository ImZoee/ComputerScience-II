import os

count = sum(1 for file in os.listdir('dateUtile') if file.endswith('.txt'))
print(f"Sunt {count} fisiere cu extensia .txt")