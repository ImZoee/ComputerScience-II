from threading import Semaphore
import threading
import random

nrMese = 4
nrClienti = 7

meseDisponibile = Semaphore(nrMese)

def client():
    while 1:
        timp_casa=random.randint(1,4)