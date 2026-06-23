import math
import threading

numere = [7, 12, 14, 13]

def calculeaza_radicale(numere):
    radicali = [math.sqrt(n) for n in numere]
    print("Radicalii numerelor sunt:", radicali)

def calculeaza_patrate(numere):
    patrate = [n ** 2 for n in numere]
    print("Pătratele numerelor sunt:", patrate)

thread_radicale = threading.Thread(target=calculeaza_radicale, args=(numere,))
thread_patrate = threading.Thread(target=calculeaza_patrate, args=(numere,))

thread_radicale.start()
thread_patrate.start()


print("Calculul s-a încheiat.")
print("Thread-uri active:", threading.enumerate())
