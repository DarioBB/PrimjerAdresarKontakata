<?php
require_once 'functions.php';

if(strstr($_SERVER['SCRIPT_FILENAME'],"/htdocs/")) // lokalno postavke: 
{
	define('_SITE_DIRECTORY', '/PrimjerAdresarKontakata/');
	define('_SITE_ROOT', $_SERVER["DOCUMENT_ROOT"]._SITE_DIRECTORY);
	define('_SITE_URL', 'http://localhost:181'._SITE_DIRECTORY);
	
	define('_DB_HOST', "localhost");
	define('_DB_USER', "root");
	define('_DB_PASS', "");
	define('_DATABASE', "phonebook");
}
else // online postavke: 
{
	define('_SITE_DIRECTORY', '/scripts/PrimjerAdresarKontakata/');
	define('_SITE_ROOT', '/home/webplace/public_html'._SITE_DIRECTORY);
	define('_SITE_URL', 'http://'.$_SERVER["SERVER_NAME"]._SITE_DIRECTORY);
	
	define('_DB_HOST', "*****");
	define('_DB_USER', "*****");
	define('_DB_PASS', "*****");
	define('_DATABASE', "*****");
}
?>