Kratke upute za kori�tenje aplikacije:

1. Cijeli projekt sa izvornim kodom se nalazi unutar datoteke PrimjerAdresarKontakata.zip

2. SQL folder sadr�i backup baze

3. Privremeno je zadatak postavljen i online na za�ti�enu adresu, ukoliko ga �elite vidjeti; nalazi se ovdje i potrebno je unijeti podatke za ulaz na web adresu:

korisni�ko ime za ulaz: 123
lozinka za ulaz: 123

Front-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/

Back-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/admin/

4. Spajanje na web servis se vr�i putem PHP-a koji dohva�a podatke u JSON formatu. 
Podaci za pojedina�ni unos se dohva�aju putem linka oblika: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/get_row_data.php?id=17
Podaci za sve unose se dohva�aju putem: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/results.json

4. U datoteci lib/config.php nalaze se konfiguracijski parametri (primjerice podaci za spajanje na bazu podataka)

5. Aplikacija je ra�ena na PHP-u je 5.5.6. Zbog JSON_PRETTY_PRINT opcije, potrebno je koristiti verziju >= PHP 5.4.0

6. Tablica sa tra�ilicom sadr�i listu sa paging-om svih une�enih korisnika. Klikom na korisnika otvara se prikaz sa detaljnijim informacijama tog korisnika.

7. Responsive prikaz (za mobilne ure�aje je ra�en prvenstveno na front dijelu - glavna 2 box-a na 50% na ve�im rezolucijama, te 100% �irine ekrana jedan ispod drugog boxa na manjim rezolucijama. Tako�er se na primjeru slike profila odre�enog korisnika vidi prilago�avanje za responsive prikaz.


Za sva pitanja stojim na raspolaganju.

S po�tovanjem,

Dario Ben�i�