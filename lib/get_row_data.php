<?php 
ini_set('display_errors', 0);

if($_GET)
{
	require_once '../lib/config.php';
	require_once '../lib/Db.php';
	require_once '../lib/Admin_Crud.php';
	
	$db = new Db;
	$conn = $db->getConnection();

	$crud = new Admin_Crud;
	$crud->table = 'contacts';
	$crud->table_related = 'contacts_numbers';

	echo $crud->get_row_data($conn, $_GET);
}
?>