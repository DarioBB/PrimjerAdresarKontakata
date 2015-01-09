<?php ini_set('display_errors', 0);
require_once '../lib/config.php';
require_once '../lib/Db.php';
$db = new Db;
$conn = $db->getConnection();
	
require_once '../lib/Admin_Crud.php';
$crud = new Admin_Crud;
$crud->table = 'contacts';
$save_status = "";

$data = $crud->get_all_data($conn);
?>
<html>
<head>
<title>Primjer adresar kontakata pregled - CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/functions.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

<div class="main">

	<form name="form_1" id="form_1" method="post" action="<?php echo $_SERVER['REQUEST_URI'];?>">

		<h1>Adresar kontakata</h1>
		<p><a href="../admin/">Unos kontakata</a></p>
		<?php
		//var_dump($data);
		$data = json_decode($data, true);
		$i = 0;
		foreach($data as $k=>$n)
		{
			if($i == 0)
			{
				echo '
				<div class="row_block">
					<span class="row_item"><strong>Ime</strong></span>
					<span class="row_item"><strong>Prezime</strong></span>
					<span class="row_edit edit_extra">&nbsp;</span>
					<span class="row_edit">&nbsp;</span>
				</div>';
			}
			echo '
			<div class="row_block" id="row_block_'.$n['id'].'">
				<span class="row_item">'.$n['name'].'</span>
				<span class="row_item">'.$n['last_name'].'</span>
				<span class="row_edit edit_extra"><a href="../admin/?id='.$n['id'].'">[Izmjeni]</a></span>
				<span class="row_edit"><a href="javascript:;" onclick="if(confirm(\'Jeste li sigurni da želite obrisati stavku?\')){ del_item('.$n['id'].', \''.$crud->table.'\'); }">[Izbriši]</a></span>
			</div>';
			
			$i++;
		}
		?>
		<div class="clearfix"></div>
		
		<?php if( (!is_array($save_status)) && ($save_status != "") ) { ?>
		<span class="form_block">
			<?php echo $save_status;?>
		</span>
		<div class="clearfix"></div>
		<?php } ?>
		
	</form>
	
</div>

</body>
</html>