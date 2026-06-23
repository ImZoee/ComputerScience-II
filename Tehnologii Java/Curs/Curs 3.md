**Clase si obiecte**
POO este e o metoda de implementare in care programele sunt organizate sub forma unor colectii de obiecte care coopereaza intre ele, fiecare tip reprezinta o instanta a unei anumite clase de obiecte, clase care la randul lor sunt membre ale unei ierarhi.
Modelul obiect dispune de 4 elemente principale:
- abstractizarea
- incapsularea
- modularitatea
- ierarhia
Si de 3 elemente secundare:
- constrangerea de tip 
- concurenta
- persistenta

**Abstractizarea**
- denota caracteristicile esentiale ale unui obiect pe care il disting de alte feluri de obiecte.
**Incapsularea**
- este procesul de compartimentare al elementelor unei abstractizari, prin care se constituie structura si comportamentul sau.
Observatii: incapsularea serveste la separarea interfetei de implementarea a unei abstractizari.
**Modularitatea**
- reprezinta proprietatea unui sistem de a se descompune intr-o multime de module coerente si in acelasi timp cat mai putin legate unele de altele.
**Ierarhia**
- reprezinta o ordonare a abstractizarilor.
**Constrangerile de tip**
- definesc in ce masura obiectele de diferite tipuri, sunt interschimbabile.
**Concurenta**
- este prioritatea prin care se deosebeste un obiect activ de unul inactiv.
**Persistenta**
- este prioritatea unui obiect de a transcende(de as-i depasi limitele) in timp si/sau spatiu.
Observatii: conceptul de concurenta si obiect a dus la aparitia limbajelor de programare orientate pe obiecte concurente, iar persistenta si modelul obiect au condus la aparitia bazelor  de date orientate obiect .

**Crearea obiectelor**
- un obiect are o stare, o identitatea si un comportament
- starea unui obiect cuprinde toate proprietatile si valorile curente ale fiecareia dintre aceste proprietati
- comportamentul reprezinta felul in care obiectul actioneaza si reactioneaza
- identitatea este acea prioritate a unui obiect care il face deosebit de alte obiecte
Definitie:
- O clasa reprezinta o multime de obiecte cu aceeas structura si comportament.
- In Java o clasa este o colectie de date si metode care opereaza cu aceste date.

In Java o metoda se identifica atat prin numele sau cat si prin numarul, tipul si pozitia argumentelor sale.
Procedeul prin care definim metode cu acelasi nume insa cu liste de argumente diferite se numeste supraincarcarea metodelor(overloading).

**Distrugerea obiectelor**
Observatii: In Java nu avem metode speciale pentru distrugerea obiectelor(destructor), acest lucru se realizeaza automat prin intermediul tehinicii **Garbage collector**. 

 **Destructor-Explicatie la examen**
 Tehnica de garbage collector presupune utilizarea unui fir de executie(Java Thread) cu numele de collector, ce are prioritate mica si ruleaza actunci cand firul principal al aplicatiei sau alte fire de executie ale programului nu ruleaza.
 Garbage collector-ul este responsabil cu identificarea obiectelor care nu mai sunt utilizate de program si realizeaza pentru acestea preparativele necesare pentru eliberarea memoriei ocupate.
 
**Subclasa si mostenire**
Cuvantul cheie corespunzator relatiei de mostenire intre clase este "extends".

**Variabile shadow**
Atunci cand intr-o sub clasa declaram o variabila cu acelas nume si de acelas tip ca o alta variabila dintr-o super clasa spunem ca umbrim declararea din sub clasa.
Exemplu:
Public class A(){
	int x;
}
public class B extends A{
	int x;
	public B(){
	}
}
- **x** => variabila **x** din clasa B
- **this.x** => variabila **x** din clasa **B**
- **super.x** => variabila **x** din clasa **A**
- **((A)this).x** => variabila **x** din clasa **A**
- **super.super.x** => constructie neacceptata

**Supraincarcarea metodelor**
class A{
	int x = 1;
	int f(){return x}
}
class B extends A{
	int x = 2;
	int f(){return x}
}
public class exemplu{
	public static void main[String[] args]{
		B b = new B();
		System.out.printl(b.x);
		System.out.println(b.f);
		A a = (A)b;
	}
}

**Modificatori de acces**
In Java modificatorul de acces implicit este package.Ceilalti modificatori sunt:
- protected
- private
- public

**Clase abstracte**
 O clasa abstracte in Java presupune ca aceasta sa detina cel putin o metoda abstracta.Prin metoda abstracte intelegem o metoda declarata cu cuvantul cheie **abstract** si care este doar declarata fara a mai fi implementata.
 Observatii: Implementarea poate fi facuta ulterior inainte de apelare. Daca o clasa contine doar metode abstracte atunci se numeste interfata. In Java este permisa mostenirea multipla la nivel de interfete si nu la nivel de clasa, cuvantul cheie corespunzator relatiei de mostenire la nivel de interfata este **implements**.