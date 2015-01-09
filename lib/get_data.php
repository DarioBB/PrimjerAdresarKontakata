<?php 
ini_set('display_errors', 0);

//if($_POST)
{
	require_once '../lib/config.php';
	require_once '../lib/Db.php';
	require_once '../lib/Admin_Crud.php';
	
	$db = new Db;
	$conn = $db->getConnection();

	$crud = new Admin_Crud;
	$crud->table = 'contacts';

	echo $crud->get_all_data($conn);
}
?>