<?php ini_set('display_errors', 0);
require_once '../lib/config.php';
require_once '../lib/Db.php';
$db = new Db;
$conn = $db->getConnection();
	
require_once '../lib/Admin_Crud.php';
$crud = new Admin_Crud;
$crud->table = 'contacts';
$crud->table_related = 'contacts_numbers';
$crud->img_sizes = array(300,200,800,600);
$save_status = "";
$required_arr = array('name', 'last_name');
if($_POST)
{
	$save_status = $crud->save_data($conn, $_POST, $required_arr);
	//if(isset($_POST['save']) && ($save_status == "true") && (!is_numeric($_GET['id'])) )
	if(isset($_POST['save']) && ($save_status == "true") )
	{
		$suf = (is_numeric($_GET['id']) ? '?s=1&id='.$_GET['id'] : '?s=1');
		header("Location: index.php".$suf."");
		exit;
	}
	else if(isset($_POST['save_2']) && ($save_status == "true") )
	{
		header("Location: adresar_pregled.php?s=1");
		exit;
	}
	$data = $_POST;
} 

if( is_numeric($_GET['id']) && ($_GET['id'] > 0) )
{
	$data = $crud->get_data($conn, (int)$_GET['id']);
}
?>
<html>
<head>
<title>Primjer adresar kontakata CMS</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">

<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/functions.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

<div class="main">

	<form name="form_1" id="form_1" method="post" action="index.php<?php echo (is_numeric($_GET['id']) ? '?id='.$_GET['id'] : '') ;?>" enctype="multipart/form-data">

		<h1>Adresar kontakata</h1>
		<p><a href="adresar_pregled.php">Pregled kontakata</a></p>
		<span class="form_block">
			<label for="name">Ime: *</label>
			<input type="text" name="name" id="name" value="<?php echo $data['name'];?>" class="<?php echo $save_status['name'];?>" />
		</span>
		<div class="clearfix"></div>
		
		<span class="form_block">
			<label for="last_name">Prezime: *</label>
			<input type="text" name="last_name" id="last_name" value="<?php echo $data['last_name'];?>" class="<?php echo $save_status['last_name'];?>" />
		</span>
		<div class="clearfix"></div>
		
		<span class="form_block">
			<label for="city">Grad: </label>
			<input type="text" name="city" id="city" value="<?php echo $data['city'];?>" />
		</span>
		<div class="clearfix"></div>

		<span class="form_block">
			<label for="description">Opis: </label>
			<textarea name="description" id="description"><?php echo $data['description'];?></textarea>
		</span>
		<div class="clearfix"></div>
		
		<span class="form_block" id="img_block_<?php echo $data['image_id'];?>">
			<label for="img_1">Slika: </label>
			<?php if($data['image_id'] == "") { ?>
			<input type="file" id="images" name="images[]" />
			<?php } else {?>
			<a id="img_holder_<?php echo $data['image_id'];?>" href="javascript:;" onclick="if(confirm('Jeste li sigurni da želite obrisati stavku?')){ del_item(<?php echo $data['image_id'];?>, 'photos'); }">
				<div class="img_holder">
					<img src="../upload_data/photos/<?php echo $data['image_url_1'];?>" width="150" alt="<?php echo $data['image_url_1'];?>" />
				</div>
			</a>
			<?php } ?>
		</span>
		<div class="clearfix"></div>
		
		<span class="form_block spacer">
			<a href="javascript:;" onclick="add_contact();" />Dodaj kontakt</a>
		</span>
		<div class="clearfix"></div>
		
		<div class="phone_number_container">
			<?php 
			if(count($data['related_data']) > 0)
			{
				$j = 1;
				foreach($data['related_data'] as $row)
				{
				?>
					<div class="phone_number_block" id="phone_number_block_<?php echo $row['id'];?>">
						<a href="javascript:;" class="delete_related_item" id="delete_related_item_<?php echo $j;?>" onclick="if(confirm('Jeste li sigurni da želite obrisati stavku?')){ del_item(<?php echo $row['id'];?>, 'contacts_numbers'); }"></a>
						<span class="form_block">
							<label for="block_<?php echo $j;?>_number">Broj: </label>
							<input type="text" name="block_<?php echo $j;?>_number" id="block_<?php echo $j;?>_number" value="<?php echo $row['number'];?>" />
						</span>
						<div class="clearfix"></div>
						
						<span class="form_block">
							<label for="block_<?php echo $j;?>_number_type_id">Tip: </label>
							<select name="block_<?php echo $j;?>_number_type_id" id="block_<?php echo $j;?>_number_type_id">
								<option value="1"<?php echo ($row['number_type_id'] == 1) ? ' selected="selected"' : '';?>>Mobitel</option>
								<option value="2"<?php echo ($row['number_type_id'] == 2) ? ' selected="selected"' : '';?>>Kućni</option>
								<option value="3"<?php echo ($row['number_type_id'] == 3) ? ' selected="selected"' : '';?>>Posao</option>
							</select>
						</span>
						<div class="clearfix"></div>
						
						<span class="form_block">
							<label for="block_<?php echo $j;?>_description">Opis: </label>
							<textarea name="block_<?php echo $j;?>_description" id="block_<?php echo $j;?>_description"><?php echo $row['description'];?></textarea>
						</span>
						<div class="clearfix"></div>
					</div>
				<?php
					$j++;
				}
				?>
				<input type="hidden" name="related_counter" id="related_counter" value="<?php echo $j;?>" />
				<?php
			}
			else 
			{
			?>
				<div class="phone_number_block" id="phone_number_block_default">
					<a href="javascript:;" class="delete_related_item" id="delete_related_item_<?php echo $j;?>" onclick="$('#phone_number_block_default').fadeOut();"></a>
					<span class="form_block">
						<label for="block_1_number">Broj: </label>
						<input type="text" name="block_1_number" id="block_1_number" value="<?php echo $data['block_1_number'];?>" />
					</span>
					<div class="clearfix"></div>
					
					<span class="form_block">
						<label for="block_1_number_type_id">Tip: </label>
						<select name="block_1_number_type_id" id="block_1_number_type_id">
							<option value="1"<?php echo ($data['block_1_number_type_id'] == 1) ? ' selected="selected"' : '';?>>Mobitel</option>
							<option value="2"<?php echo ($data['block_1_number_type_id'] == 2) ? ' selected="selected"' : '';?>>Kućni</option>
							<option value="3"<?php echo ($data['block_1_number_type_id'] == 3) ? ' selected="selected"' : '';?>>Posao</option>
						</select>
					</span>
					<div class="clearfix"></div>
					
					<span class="form_block">
						<label for="block_1_description">Opis: </label>
						<textarea name="block_1_description" id="block_1_description"><?php echo $data['block_1_description'];?></textarea>
					</span>
					<div class="clearfix"></div>
				</div>
				<input type="hidden" name="related_counter" id="related_counter" value="2" />
			<?php
			}
			?>
		</div>
		
		<span class="form_block">
			* Obavezna polja
		</span>
		<div class="clearfix"></div>
		
		<span class="form_block">
			<input type="submit" value="Spremi" name="save" id="save" />
			<input type="submit" value="Spremi i pregledaj" name="save_2" id="save_2" />
		</span>
		<div class="clearfix"></div>
		
		<?php //if( (!is_array($save_status)) && ($save_status == true) ) { ?>
		<?php if( $_GET['s'] == 1 ) { ?>
		<span class="form_block">
			Podaci su uspješno spremljeni!
		</span>
		<div class="clearfix"></div>
		<?php } ?>
		
	</form>
	
</div>

</body>
</html>