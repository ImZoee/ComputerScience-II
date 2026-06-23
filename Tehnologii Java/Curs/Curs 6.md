**Interfețe Grafice În Java**  
Interacțiunea Om-Calculator (human-computer interaction) este știința care se ocupă cu proiectarea, evaluarea și implementarea sistemelor de calcul interactive destinate uzului uman.  
**Observații:** Din perspectiva științei calculatoarelor, accentul este pus pe interacțiune, mai precis se referă la una sau mai multe mașini de calcul. Luând în considerare noțiunea de mașină, putem avea de-a face, în locul clasicelor stații de lucru, cu mașini de calcul încorporate (EMB, ca de exemplu părți ale bordurilor avioanelor sau clasicele cuptoare cu microunde).

**Use and context of Computers**  
Utilizarea calculatoarelor și problematica acestora apar în procesul de integrare a acestora în medii sociale, utilizarea lor pentru rezolvarea problemelor din diverse domenii și în îmbunătățirea relației om-calculator.

**Human characteristics**  
Caracteristicile umane: aici, programatorii trebuie să studieze aspecte referitoare la procesarea informației de către ființele umane (memorie, recepție, atenție, capacitatea de a rezolva probleme, învățarea, motivație, diversitate etc.) și la ergonomie (caracteristici fizice, fiziologie, precum și interacțiunea cu mediul de lucru).

**Computer system and interface architecture**  
Sisteme de calcul și arhitectura interfeței: acest domeniu se ocupă cu componentele hardware și software specializate în interacțiunea cu utilizatorii umani, de exemplu, sisteme de intrare/ieșire, controllere, componente audio (microfoane și boxe).

**Development process**  
Proces de dezvoltare: aici, programatorii trebuie să aibă în vedere modul de abordare al proiectării, uneltele, tehnicile de implementare, metodele de evaluare și studiul proiectelor de succes care vor servi ca model.  
**Concluzie:** Interfața utilizator este partea unei aplicații software care permite utilizatorului să interacționeze cu calculatorul și să-și îndeplinească îndatoririle sau sarcinile (task-uri).

**Etapele proiectării interfețelor utilizator**  
În procesul de proiectare a interfețelor grafice se poate folosi prototipizarea, care presupune realizarea de prototipuri ale interfeței grafice ce sunt evaluate și reactualizate pe tot procesul de dezvoltare a aplicației. Prototipurile interfeței grafice clarifică interacțiunile aplicației cu utilizatorii sau cu alte aplicații, respectiv funcționalitățile aplicației. Pentru organizarea proiectării se cunosc mai multe modele, dintre care cele mai cunoscute sunt:
- Modelul cascadă
- Modelul iterativ

**Modelul cascadă**  
Un ciclu de proiectare include următoarele etape:
- Analiza task-urilor
- Realizarea prototipurilor
- Evaluarea
- Implementarea
- Iterarea

**Modelul iterativ**  
Are un mare avantaj, utilizarea acestuia duce la descoperirea eventualelor greșeli la nivelul specificațiilor, economisindu-se astfel timp și resurse. Modelul iterativ presupune proiectare, implementare și evaluare ca proces continuu, până la realizarea interfeței dorite.

**Interfețe grafice utilizator în Java**  
Inițial, limbajul Java a pus la dispoziția programatorilor setul de componente **Abstract Window Toolkit (AWT)**. Ulterior, acesta, nefiind suficient pentru dezvoltatorii interfețelor grafice sofisticate, a apărut pachetul **Swing**, care este un subset al **JFC**.  
Îmbunătățirile aduse de Swing sunt:
- Posibilitatea de a crea componente cu forme nerectangulare.
- Accesibilitate îmbunătățită pentru persoanele cu dizabilități.
**Observații:** Pe lângă pachetul Swing, Java pune la dispoziția programatorilor și biblioteca **JavaFX**, care permite dezvoltarea unor interfețe grafice de utilizator dinamice, conducând chiar la crearea jocurilor interactive.

**Java Foundation Classes (JFC)**  
Presupune un grup de API-uri incluse în platforma **Java Standard Edition**, aceste API-uri fiind grupate corespunzător seturilor de componente grafice:
- AWT
- Swing
- Accessibility
- Java 2D API
- Drag-And-Drop