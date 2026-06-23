import threading
import random
import time

def functie(mesaj_afisat, delay, nrRepetari, thread_nr):
    thread_name = f"Thread({thread_nr} {mesaj_afisat})"
    print(f"Suntem in threadul: {thread_name}")
    for _ in range(nrRepetari):
        print(f"Salut {mesaj_afisat}")
        time.sleep(delay)

# Lista de animale
var = ['leu', 'bufnita', 'tigru', 'urs', 'lup', 'maimuta', 'ras',
       'leopard', 'sarpe', 'vultur', 'soim', 'pirania', 'cimpanzeu']

# Generare număr aleator de thread-uri între 5 și 10
nr_threads = random.randint(5, 10)
print(f"Număr de thread-uri generate: {nr_threads}")

# Lista pentru a ține evidența thread-urilor
threads = []

# Creare și pornire thread-uri
for i in range(nr_threads):
    # Generare parametri aleatori
    mesaj = var.pop(random.randint(0, len(var) - 1))  # Extragem fără reintroducere
    delay = random.randint(1, 3)
    repetari = random.randint(3, 8)

    # Creare și pornire thread
    thread = threading.Thread(target=functie, args=(mesaj, delay, repetari, i))
    threads.append(thread)
    thread.start()

# Așteptăm finalizarea tuturor thread-urilor
for thread in threads:
    thread.join()

print("Toate thread-urile s-au încheiat!")