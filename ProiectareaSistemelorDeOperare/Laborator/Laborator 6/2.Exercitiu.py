import math
import threading

numere = [7, 12, 14, 13]

def calculeaza_radicale(numere):
    radicali = [math.sqrt(n) for n in numere]
    print("Radicalii numerelor sunt:", radicali)

def calculeaza_patrate(numere):
    patrate = [n ** 2 for n in numere]
    print("Pătratele numerelor sunt:", patrate)