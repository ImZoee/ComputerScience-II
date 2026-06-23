JavaFX este o platforma relativ recenta bazata pe limbajul Java destinata aplicatiilor de tip rich internet(RIA) ce contin intefete grafice interactive.
Principala caracteristica a aplicatiilor dezvoltate cu JavaFx este protabilitatea care confera aceeas rulare indiferent de mediul in care ruleaza.
Corespunzator versiuni actuale de Java platfoma JavaFX nu mai este integrata si este open-source.
Ca si componente pe piata dezvoltarii de aplicatiilor avem:
- Adobe AIR
- Aproche Pivot
- Open Laszlo
- Ajax
- Microsoft Silverlight

**Arhitectura platformei JavaFX**
Peste masina virtuala Java mai avem:
- Glass Window toolkit
- Media Engine
- Web Engine
Peste toate acestea avem Quantum toolkit iar peste acesta este JavaFX Public API's and Scene Graphic.
Implementarea unei aplicatii in JavaFX implica proiectarea unui graf de scene, structura ierarhica de noduri ce contine elementele vizuale ale interfetei grafice ce comunica cu utilizatorul care poate trata diferite evenimente legate de acesta si care poate fi redata. Un element din graful scenei este indentificat in mod unic fiind caracterizat printr-o clasa, fiecare nod are un parinte cu exceptia radacinii, spre deosebire de Java Swing sau AWT, JavaFX contine pe langa mecanisme de dispunere a continutului: centrare, imagini sau obiecte multimedia si primitive pentru elemente grafice folosim metodele puse la dispozitie de API-urile JavaFX.animation
API JavaFX.scene permite sa construim urmatoarele continuturi:
1. **Noduri**
- Forme 2D si 3D
- Imagini
- Continut multimedia
- Text
- Controale pentru interactiuni
2. **Stari si efecte vizuale**
In sistemul grafic JavaFX pot fi implementate grafuri de scena 2D si 3D, pe langa asta print itermediul API-urile in JavaFX putem implementa continut multimedia.