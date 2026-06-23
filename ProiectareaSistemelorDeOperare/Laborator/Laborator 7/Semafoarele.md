Semafoarele sunt folosite pentru limitarea a limita accesul la:
- O resursa;
- O sectiune din program
```python
	nrMax = 4
	num_sem= threading.semafor(nrMax)
	#Metodele unui semafor:
	numSem.acquire()#Face decrementarea semaforului! if val = 0 => blocked
	numSem.release()#Face incrementarea semaforului!
```