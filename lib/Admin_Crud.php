<?php
class Admin_Crud 
{
	public $table = '', $table_related = '', $img_sizes = array();
	protected $skip_arr = array('images', 'save', 'save_2', 'related_counter');
	
	public function save_data($conn, $data, $required_arr)
	{
		//var_dump($data);
		$sql_dod = '';
		$sql_dod_2 = '';
		$err = array();
		$extra_item_arr = array();
		$extra_value_arr = array();
		$i = 0;
		$m = 0;
		$j = 0;
		foreach($data as $k=>$n)
		{
			if(!in_array($k, $this->skip_arr))
			{
				if(!strstr($k, "block_"))
				{
					if(in_array($k, $required_arr) && (trim($n) == "") )
					{
						$err[$k] = 'txt_error';
					}
					$z_dod = ($i == 0) ? '' : ', ';
					$sql_dod .= $z_dod.'`'.$k.'` = "'.$n.'"';
					$i++;
				}
				else 
				{
					if($this->table == 'contacts')
					{
						$item = substr($k, 8);
						$extra_item_arr[$item][$m] = $item;
						$extra_value_arr[$item][$m] = $n;
						$m++;
					}
				}
			}
		}
		//echo $sql_dod_2;exit;
		
		if(count($err) > 0)
		{
			return $err;
		}
		else 
		{
			if( is_numeric($_GET['id']) && ($_GET['id'] > 0) )
			{
				$sql_1 = 'update ';
				$sql_2 = 'where id = '.(int)$_GET['id'].' ';
			}
			else 
			{
				$sql_1 = 'insert into ';
				$sql_2 = '';
			}
			
			$sql = ''.$sql_1.' '.$this->table.' set '.$sql_dod.' '.$sql_2.' ';
			//print $sql.'<br />';
			if(mysqli_query($conn, $sql))
			{
				if( is_numeric($_GET['id']) && ($_GET['id'] > 0) )
				{
					$last_id = (int)$_GET['id'];
					$sql = 'delete from `'.$this->table_related.'` where '.$this->table.'_id = '.$last_id.' ';
					mysqli_query($conn, $sql);
					
					$sql_1 = 'insert into ';
					$sql_2 = '';
				}
				else 
				{
					$last_id = (int)mysqli_insert_id($conn);
					$sql_1 = 'insert into ';
					$sql_2 = '';
				}
				//var_dump($extra_item_arr);
				$a = 0;
				for($j2 = 0; $j2 < $m; $j2++)
				{
					$sql_dod_2 = ' '.$this->table.'_id = '.$last_id.' ';
					$no_values = 0;
					foreach($extra_item_arr as $k=>$n)
					{
						//echo $k.': '.$extra_value_arr[$k][$a].'<br />';
						$z_dod_2 = ', ';
						$sql_dod_2 .= $z_dod_2.'`'.$k.'` = "'.$extra_value_arr[$k][$a].'"';
						if(trim($extra_value_arr[$k][$a]) == "")
						{
							$no_values++;
						}
						$a++;
					}
					if($no_values <= 1)
					{
						$sql = ''.$sql_1.' '.$this->table_related.' set '.$sql_dod_2.' '.$sql_2.' ';
						mysqli_query($conn, $sql);
						//print $sql.'<br />';
					}
				}
				//exit;
				//$message = 'Podaci su uspješno spremljeni';
				
				$this->upload_data($conn, $this->table, $last_id, "images");
				
				$this->get_all_data_for_json($conn);// kod svakog update/inserta, sprema se i json, čije se spremanje dešava nakon čitanja tablice
			
				$message = true;
			}
			else 
			{
				$message = 'Podaci nisu uspješno spremljeni';
			}
			
			return $message;
		}
	}
	
	public function upload_data($conn, $table, $table_id, $type=false)
	{
		if( ($type == false) || ($type == "images") )
		{
			$valid_formats = array("jpg", "png", "gif");
			$path = "upload_data/photos";
			$input_n = "images";
			$type_table = "photos";
		} 
		//$max_file_size = 1024*100; //100 kb
		//$path = "upload_data/site_photos";
		$count = 0;

		foreach ($_FILES[$input_n]['name'] as $f => $name) {     
			if ($_FILES[$input_n]['error'][$f] == 4) {
				continue;
			}	       
			if ($_FILES[$input_n]['error'][$f] == 0) {	 
				/*if ($_FILES['files']['size'][$f] > $max_file_size) {
					$message[] = "$name je prevelika datoteka!.";
					continue; 
				}
				else*/if( ! in_array(pathinfo(strtolower($name), PATHINFO_EXTENSION), $valid_formats) ){
					$message[] = "$name nije dozvoljena datoteka";
					continue; 
				}
				else
				{ 
					$file_name = clean_uri($_FILES[$input_n]["name"][$f]);
					$folder_s = $path;
					
					if(is_file(_SITE_ROOT.$folder_s.'/'.$file_name))
						$file_name = rand().rand().rand().'_'.$file_name;
					
					if($type_table == "photos")
					{
						move_uploaded_file($_FILES[$input_n]["tmp_name"][$f], _SITE_ROOT.$folder_s.'/tmp_'.$file_name);
						
						$input_file_name = _SITE_ROOT.$folder_s.'/tmp_'.$file_name;
						$destination_file_name1 = _SITE_ROOT.$folder_s.'/th_'.$file_name;
						$destination_file_name2 = _SITE_ROOT.$folder_s.'/'.$file_name;
						
						image_resize_to($input_file_name, $destination_file_name1, $this->img_sizes[0], $this->img_sizes[1], 100);
						
						if($this->img_sizes[2] && $this->img_sizes[3])
							image_resize_to($input_file_name, $destination_file_name2, $this->img_sizes[2], $this->img_sizes[3], 100);
						
						@unlink($input_file_name);
					}
					
					$sql_dod = ($type_table == "photos") ? ', photo_name = "'.$file_name.'"' : '';
					
					$sql = 'INSERT INTO '.$type_table.' SET table_name = "'.$table.'", table_id = '.$table_id.''.$sql_dod.'';
					//print $sql.'<br />';
					mysqli_query($conn, $sql);
					$i_id = mysqli_insert_id($conn);
					
					$sql = 'UPDATE '.$type_table.' SET orderby = '.$i_id.' WHERE id = '.$i_id.' LIMIT 1';
					mysqli_query($conn, $sql);
				}
			}
		}
	}
	
	public function save_json($data)
	{
		$json = json_encode($data, JSON_PRETTY_PRINT);
		//$json = json_utf8_right($data);
		$fp = fopen(_SITE_ROOT.'lib/results.json', 'w');
		fwrite($fp, $json);
		fclose($fp);
	}

	public function get_data($conn, $id)
	{
		$sql = 'select * from `'.$this->table.'` where id = '.(int)$id.'';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
		$row = mysqli_fetch_array($rez);
		
		$sql = 'select id, photo_name from photos where table_name="'.$this->table.'" and table_id='.(int)$id.' ';
		$rez2 = mysqli_query($conn, $sql);
		$row2 = mysqli_fetch_array($rez2);
		$row['image_url_1'] = 'th_'.$row2['photo_name'];
		$row['image_url_2'] = $row2['photo_name'];
		$row['image_id'] = $row2['id'];
		
		$row['related_data'] = $this->get_related_data($conn);
		
		return $row;
	}
	
	public function get_all_data($conn)
	{
		$j = 0;
		$sql = 'select * from `'.$this->table.'` order by id desc ';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
		$data_all = array();
		while($row = mysqli_fetch_assoc($rez))
		{
			$data_all[] = $row;
			$j++;
		}
		
		return json_encode($data_all);
	}
	
	public function get_all_data_for_json($conn)
	{
		$j = 0;
		$sql = 'select '.$this->table.'.id as id, '.$this->table.'.name, '.$this->table.'.last_name, '.$this->table.'.city,  
			'.$this->table.'.created 
			from `'.$this->table.'` 
			order by '.$this->table.'.id desc ';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
		$data_all = array();
		while($row = mysqli_fetch_assoc($rez))
		{
			$all_numbers = '';
			$sql = 'select '.$this->table_related.'.number as number 
				from  `'.$this->table_related.'` 
				where '.$this->table.'_id = '.$row['id'].'
				order by '.$this->table_related.'.id desc ';
			$rez2 = mysqli_query($conn, $sql);
			$z = 0;
			while($row2 = mysqli_fetch_assoc($rez2))
			{
				$z_dod_2 = ($z == 0) ? '' : ', ';
				$all_numbers .= $z_dod_2.$row2['number'];
				$z++;
			}
			$row['numbers'] = $all_numbers;

			$data_all[] = $row;
			$j++;
		}
		
		$all['data'] = $data_all;
		$this->save_json($all);
		
		return json_encode($data_all);
	}
	
	public function get_row_data($conn, $data)
	{
		$sql_dod = ' id = '.(int)$data['id'].' ';
		$j = 0;
		$sql = 'select * from `'.$this->table.'` where '.$sql_dod.' order by id desc ';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
		$data_all = array();
		while($row = mysqli_fetch_assoc($rez))
		{
			$data_all[] = $row;
			$j++;
		}
		$sql = 'select photo_name from photos where table_name="'.$this->table.'" and table_id = '.(int)$data['id'].' limit 1 ';
		//print $sql.'<br />';
		$rez2 = mysqli_query($conn, $sql);
		$row2 = mysqli_fetch_array($rez2);
		$img = ($row2['photo_name'] != "") ? _SITE_URL.'upload_data/photos/'.$row2['photo_name'] : _SITE_URL.'images/default-image.png';
		$th_img = ($row2['photo_name'] != "") ? _SITE_URL.'upload_data/photos/th_'.$row2['photo_name'] : _SITE_URL.'images/default-image.png';
		$row3['image'] = $img;
		$row3['th_image'] = $th_img;
		$data_all[] = $row3;
		
		$sql = 'select '.$this->table_related.'.number as number, '.$this->table_related.'.description as details_description, 
			number_type.title as number_type_title 
			from  `'.$this->table_related.'`, number_type  
			where '.$this->table.'_id = '.(int)$data['id'].' 
			and '.$this->table_related.'.number_type_id = number_type.id 
			order by '.$this->table_related.'.id desc ';
		//print $sql.'<br />';
		$rez4 = mysqli_query($conn, $sql);
		$z = 0;
		while($row4 = mysqli_fetch_assoc($rez4))
		{
			$data_all[] = $row4;
		}
		
		return json_encode($data_all);
	}
	
	public function get_related_data($conn)
	{
		$rez = '';
		if( is_numeric($_GET['id']) && ($_GET['id'] > 0) )
		{
			$last_id = (int)$_GET['id'];
			$sql = 'select * 
			from `'.$this->table_related.'` 
			where '.$this->table.'_id = '.$last_id.' 
			order by id asc ';
			$rez = mysqli_query($conn, $sql);
		}
		return $rez;
	}
	
	public function delete_item($conn, $id)
	{
		if($this->table == 'photos')
		{
			$sql = 'select photo_name from photos where id = '.(int)$id.' ';
			$rez2 = mysqli_query($conn, $sql);
			$row2 = mysqli_fetch_array($rez2);
			@unlink(_SITE_ROOT.'upload_data/photos/'.$row2['photo_name']);
			@unlink(_SITE_ROOT.'upload_data/photos/th_'.$row2['photo_name']);
		}
		
		$sql = 'delete from `'.$this->table.'` where id = '.(int)$id.' ';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
		
		$sql = 'select photo_name from photos where table_name="'.$this->table.'" and table_id = '.(int)$id.' ';
		$rez2 = mysqli_query($conn, $sql);
		$row2 = mysqli_fetch_array($rez2);
		@unlink(_SITE_ROOT.'upload_data/photos/'.$row2['photo_name']);
		@unlink(_SITE_ROOT.'upload_data/photos/th_'.$row2['photo_name']);
		
		$sql = 'delete from photos where table_name="'.$this->table.'" and table_id = '.(int)$id.' ';
		//print $sql.'<br />';
		$rez = mysqli_query($conn, $sql);
	}
	
}