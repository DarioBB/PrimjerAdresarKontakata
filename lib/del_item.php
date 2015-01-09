<?php
ini_set('display_errors', 0);

if(isset($_POST))
{
	require_once '../lib/config.php';
	require_once '../lib/Db.php';
	require_once '../lib/Admin_Crud.php';
	
	$db = new Db;
	$conn = $db->getConnection();
	
	$crud = new Admin_Crud;
	$crud->table = $_POST['table'];
	
	$crud->delete_item($conn, (int)$_POST['id']);
}
?>