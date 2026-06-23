**Tehnologii Java**

**Tratarea exceptiilor este o obligatie**
Exceptiile pot aparea din diverse cauze si totodata pot avea nivele diferite de gravitate.
De la erori fatale de echipament hardware pana la erori ce tin strict de codul programabil cum ar fi accesarea unui element din afara spatiului alocat unui vector.
int v[] = new int [10];
v[100]=0 => Exceptie

**Tratarea exceptiilor**
try{
	//instructiuni care pot genera exceptii
}catch(TipExceptie1 variabila){
	//tratarea exceptiilor de tip 1
}finaly{
	//cod care executa indiferent
}
Try contine tot cea ce programatorul considera cod susceptibil de exceptii.
Observatii: Pentru fiecare tip de exceptie identifica se va genera cate un bloc catch unde se va trata individual fiecare exceptie.
Pentru blocul finally, programatorul va trece cod care se executa indiferent daca apar sau nu exceptii.

**Aruncarea exceptiilor**
A doua metoda de tratare a exceptiilor presupune semnalarea aparitie evenimentului exceptional in cadrul unei metode numite **throws** si tratarea exceptiilor semnalate atunci metoda urmeaza sa fie apelata

**Avantaje privind tratarea exceptiilor**
Prin modalitatea de tratare a exceptiilor Java ofera programatorilor urmatoarele avantaje:
- Separarea codului pentru tratarea unei erori de restul codul in care ea poate sa apara.
- Propagarea unei erori pana la un analizator de exceptie.
- Gruparea erorilor dupa tipul lor.
Observatii: Totodata tratarea exceptiilor poate constitui un dezavantaj prin faptul ca programatorul va genera cod care poate produce ambiguitati.

**Ierarhia claselor ce descriu exceptii**
Super clasa este Throwable. Ea are 2 sub clase:
- Exceptii
- Error
Si Exception care are mai multe sub clase:
- IOException
- RunTimeException
- ArrayIndexOutOfBounds => primul program din curs
Clasa FileNotFoundException are ca sub clasa IOException care se raspunzatoare lucrului cu fisiere(deschidere, inchidere, citire, scriere).

**Exceptii speciale**
- ArithmeticException
- NullPointerException
- ArrayIndexOutOfBoundsExceptio
