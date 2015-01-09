<?php require_once 'lib/config.php';?>
<html>
<head>
<title>Primjer adresar kontakata</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, width=device-width, maximum-scale=1.0, user-scalable=no" />

<link rel="stylesheet" type="text/css" href="js/DataTables/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="js/DataTables/css/dataTables.responsive.css">

<script type="text/javascript" language="javascript" src="js/DataTables/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="js/DataTables/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/DataTables/js/dataTables.responsive.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/320up.css" rel="stylesheet" media="screen and (min-width: 320px)"/>
<link href="css/360up.css" rel="stylesheet" media="screen and (min-width: 360px)"/>
<link href="css/460up.css" rel="stylesheet" media="screen and (min-width: 460px)"/>
<link href="css/560up.css" rel="stylesheet" media="screen and (min-width: 560px)"/>
<link href="css/660up.css" rel="stylesheet" media="screen and (min-width: 660px)"/>
<link href="css/760up.css" rel="stylesheet" media="screen and (min-width: 760px)"/>
<link href="css/860up.css" rel="stylesheet" media="screen and (min-width: 860px)"/>
<link href="css/960up.css" rel="stylesheet" media="screen and (min-width: 960px)"/>
<link href="css/1180up.css" rel="stylesheet" media="screen and (min-width: 1180px)"/>

<script type="text/javascript" src="js/respond.js"></script>

<script type="text/javascript" language="javascript" class="init">

	$(document).ready(function() {
		$('#example').DataTable( {
			"ajax": "lib/results.json",
			"deferRender": true,
			"responsive": true,
			"language": {
				"url": "<?php echo _SITE_URL;?>js/DataTables/dataTables.croatian.lang"
			},
			"columns": [
				{ "data": "id" },
				{ "data": "name" },
				{ "data": "last_name" },
				{ "data": "city" },
				{ "data": "numbers" },
				{ "data": "created" }
			], 
			"aoColumnDefs": [ { "sClass": "dpass", "aTargets": [ 0 ] } ] // prva kolumna
		} );
		$('#example tbody').on('click', 'tr', function () {
			var id = $('td', this).eq(0).text();
			var name = $('td', this).eq(1).text();
			var last_name = $('td', this).eq(2).text();
			var city = $('td', this).eq(3).text();
			var numbers = $('td', this).eq(4).text();
			var created = $('td', this).eq(5).text();
			
			$.ajax({
				type: 'GET',
				data: { id : id },
				url: 'lib/get_row_data.php',
				dataType: 'html',
				success: function(data)
				{
					var obj = $.parseJSON(data);
					//alert(obj);
					$('.container_2').fadeOut(0).fadeIn(200);
					$("#user_row_2_container").html("");
					$.each(obj, function(index, value) {
						//alert(index);
						if(index === 1)
						{
						$("#user_image").html('<img width="228" class="img_profile" src="'+value.th_image+'" />');
						}
						else if(index > 1)
						{
							//alert(value.number);
							var num_val = (value.number != '') ? value.number : '&nbsp;';
							var d_desc_val = (value.details_description != '') ? value.details_description : '&nbsp;';
							var n_type = (value.number_type_title != '') ? value.number_type_title : '&nbsp;';
							
							$("#user_row_2_container").append('<div class="user_val_2 val_field_1">'+n_type+'</div>');
							$("#user_row_2_container").append('<div class="user_val_2 val_field_2">'+num_val+'</div>');
							$("#user_row_2_container").append('<div class="user_val_2 val_field_3">'+d_desc_val+'</div><div class="clearfix"></div>');
						}
						else 
						{
						  var n_val = (value.name != '') ? value.name : '&nbsp;';
						  var ln_val = (value.last_name != '') ? value.last_name : '&nbsp;';
						  var c_val = (value.city != '') ? value.city : '&nbsp;';
						  var d_val = (value.description != '') ? value.description : '&nbsp;';
						  $("#user_name").html(n_val);
						  $("#last_name").html(ln_val);
						  $("#city").html(c_val);
						  $("#description").html(d_val);
						}
					});
				}
			});
			
		} );
	} );

</script>

</head>

<body>

	<div class="container">
		<section>
			<table id="example" class="display responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>ID</th>
						<th>Ime</th>
						<th>Prezime</th>
						<th>Grad</th>
						<th>Telefoni</th>
						<th>Kreirano</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th>ID</th>
						<th>Ime</th>
						<th>Prezime</th>
						<th>Grad</th>
						<th>Telefoni</th>
						<th>Kreirano</th>
					</tr>
				</tfoot>
			</table>
		</section>
	</div>


	<div class="container_2 display_none" id="data_box_user">
	
		<div id="res_box_top">
	
			<div id="box_user_texts">
				<div class="user_row">
					<div class="user_lab" id="user_name_label">Ime: </div>
					<div class="user_val" id="user_name">&nbsp;</div>
					<div class="clearfix"></div>
					
					<div class="user_lab" id="last_name_label">Prezime: </div>
					<div class="user_val" id="last_name">&nbsp;</div>
					<div class="clearfix"></div>
				</div>
				
				<div class="user_row">
					<div class="user_lab" id="city_label">Grad: </div>
					<div class="user_val" id="city">&nbsp;</div>
					<div class="clearfix"></div>
					
					<div class="user_lab" id="description_label">Opis: </div>
					<div class="user_val" id="description">&nbsp;</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div id="box_user_image">
				<div id="user_image">&nbsp;</div>
			</div>
			
		</div>
		<div class="clearfix"></div>
		
		<div id="res_box_bottom">
		
			<div id="box_user_texts_2">
				<div class="user_row_2" id="user_row_2_container">

				</div>
			</div>
			
		</div>
		
	</div>

</body>

</html>