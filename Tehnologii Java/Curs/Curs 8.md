Observarea starii unei entitati in cadrul unui sistem.
Pentru a implementa o actiune avem nevoie de **ActionListener** pentru a asculta butonul pe care il apasam.

**Tipuri de evenimente**
1. **Component Event:**
- Ascundere
- Redimensionare
- Deplasare
- Afisare
2. **Container Event:**
- Adaugare 
- Eliminare componente
3. **Focus Event:**
- Obtinere
- Pierdere Focus
4. **Key Event:**
- Apasare
- Eliberare taste
5. **Mouse Event:**
- Toate operatiile efectuate cu mouse-ul(click,drag and drop)
6. **Window Event:**
- Operatiuni asupra ferestrelor(minimizare, maximizare)
7. **Action Event:**
- Apasarea unui buton
8. **Adjustment Event:**
- Ajustarea unei valori/a unei componente
9. **Item Event:**
- Schimbarea starii unei componente
10. **Text Event:**
- Schimbarea textului unei componente

**Relatia componenta grafica listener**
In general avem:
- **Componente**: KeyListener, MouseListener,FocusListener
- **Container:** ContainerListener
- **WindowListenere**: Window
- **ActiontListener**: Button, List, MenuItem, TextField
- **ItemListener**: Choice, CheckBox, List
- **AdjustmentListener**: Scrollbar

**Metode handler** 
**ActionListener**: actionPerformed(Action e)
**ItemListener**: itemStateChanged(ItemEvent e)
**TextListener**: TextValueChanged(TextEvent e)
**MouseListener**: mouseClick, mouseExtender(MouseEvent e) 

Java Swing extinde tehnologia AWT si mecanismele de baza, acestea ruland pe orice sistem