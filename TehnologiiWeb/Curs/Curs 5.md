## Limbajul PHP, Limbaj pentru dezvoltarea aplicatiilor web
Este un limbaj de scripting server-side utilizat pentru crearea paginilor dinamice, acestea sunt executate pe servere.
Este un limbaj de programare procedural, suporta toate featur-ele POO fiind un limbaj interpretat, secventele de cod se introduc direct in pagina web, sintaxa este inspirata din C si Java
#### Sintaxa
```php
<?php
	instructiuni
?>
```
Sintaxa Scurta Nerecomandata
```php
<?
	instructiuni
?>
```
Exemplu:
```php
<?php>
//Acesta este unu comentariu
/*Acesta este inca un comentariu*/
	echo "Hello World";
	print "Hello World"
?>
```
#### Variabile
Orice variabila incepe cu simbolul $, ele nu se declara, sunt create atomat in momentul utilizarii
Tipuri:
 - string
 - boolean
 - integer
 - float
 - array
```php
<?php
	$varsta = 22; //int
	$pret = 19.18 //float
	$mesaj = 'Hello' //string
	$mesaj = "Hello" //strin
	$prim = True; //boolean
	$listCulor = array("Rosu","Galben","Verde"); //array
	$listaJudet = array("DJ=>Dolj") //Tablou asociativ
?>
```
#### Instructiuni
