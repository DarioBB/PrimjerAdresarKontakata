Kratke upute za korištenje aplikacije:

1. Cijeli projekt sa izvornim kodom se nalazi unutar datoteke PrimjerAdresarKontakata.zip

2. SQL folder sadrži backup baze

3. Privremeno je zadatak postavljen i online na zaštiæenu adresu, ukoliko ga želite vidjeti; nalazi se ovdje i potrebno je unijeti podatke za ulaz na web adresu:

korisnièko ime za ulaz: 123
lozinka za ulaz: 123

Front-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/

Back-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/admin/

4. Spajanje na web servis se vrši putem PHP-a koji dohvaæa podatke u JSON formatu. 
Podaci za pojedinaèni unos se dohvaæaju putem linka oblika: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/get_row_data.php?id=17
Podaci za sve unose se dohvaæaju putem: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/results.json

4. U datoteci lib/config.php nalaze se konfiguracijski parametri (primjerice podaci za spajanje na bazu podataka)

5. Aplikacija je raðena na PHP-u je 5.5.6. Zbog JSON_PRETTY_PRINT opcije, potrebno je koristiti verziju >= PHP 5.4.0

6. Tablica sa tražilicom sadrži listu sa paging-om svih unešenih korisnika. Klikom na korisnika otvara se prikaz sa detaljnijim informacijama tog korisnika.

7. Responsive prikaz (za mobilne ureðaje je raðen prvenstveno na front dijelu - glavna 2 box-a na 50% na veæim rezolucijama, te 100% širine ekrana jedan ispod drugog boxa na manjim rezolucijama. Takoðer se na primjeru slike profila odreðenog korisnika vidi prilagoðavanje za responsive prikaz.


Za sva pitanja stojim na raspolaganju.

S poštovanjem,

Dario Benšiæ