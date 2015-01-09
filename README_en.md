Short usage desc:

1. SQL folder contains database dump

2. Temporary you can see how it works here:

username: 123
pass: 123

Front-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/

Back-end:
http://www.web-place.info/scripts/PrimjerAdresarKontakata/admin/

3. Connection to webservice is done via PHP which gets data in JSON format.
Data for one item example: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/get_row_data.php?id=17
Data for all items example: http://www.web-place.info/scripts/PrimjerAdresarKontakata/lib/results.json

4. File lib/config.php contains configuration parameters (db params etc).

5. Tested on PHP 5.5.6. Needed PHP version is >= PHP 5.4.0 (JSON_PRETTY_PRINT is userd)

6. Table with search contains list with paging of all entered users. Click on user gets view with more detailed information for that user.

7. Responsive view is set only on 2 main boxes (50% on bigger resolutions (2 boxes in row), 100% of width on smaller resolutions (1 box in row) ). 


Copyright Dario Benšiæ