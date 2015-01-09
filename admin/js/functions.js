var i = 0;
$(document).ready(function(){	
	i = $('#related_counter').val();
});
function add_contact() 
{
	var html = '<div class="phone_number_block" id="phone_number_block_default_'+i+'">'+
			'<a href="javascript:;" class="delete_related_item" id="delete_related_item_'+i+'" onclick="$(\'#phone_number_block_default_'+i+'\').fadeOut();"></a>'+
			'<span class="form_block">'+
				'<label for="block_'+i+'_number">Broj: </label>'+
				'<input type="text" name="block_'+i+'_number" id="block_'+i+'_number" />'+
			'</span>'+
			'<div class="clearfix"></div>'+
			
			'<span class="form_block">'+
				'<label for="block_'+i+'_number_type_id">Tip: </label>'+
				'<select name="block_'+i+'_number_type_id" id="block_'+i+'_number_type_id">'+
					'<option value="1">Mobitel</option>'+
					'<option value="2">Kućni</option>'+
					'<option value="3">Posao</option>'+
				'</select>'+
			'</span>'+
			'<div class="clearfix"></div>'+
			
			'<span class="form_block">'+
				'<label for="block_'+i+'_description">Opis: </label>'+
				'<textarea name="block_'+i+'_description" id="block_'+i+'_description"></textarea>'+
			'</span>'+
			'<div class="clearfix"></div>'+
		'</div>';
		
	i++;

	$(".phone_number_container").append(html).hide(0).fadeIn(200);

	$("body,html").delay(400).animate({scrollTop: $('body')[0].scrollHeight}, "slow");
}

function del_item(id, table)
{
	$.ajax({
        type: 'POST',
        data: { id: id, table: table },
        url: '../lib/del_item.php',
        dataType: 'html',
        success: function(data)
        {
			if(table == 'photos')
			{
				$('#img_holder_'+id+'').fadeOut();
				$('#img_block_'+id+'').html('<label for="images">Slika: </label><input type="file" id="images" name="images[]" />');
			}
			else if(table == 'contacts_numbers')
			{
				$('#phone_number_block_'+id+'').fadeOut();
			}
			else 
			{
				$('#row_block_'+id+'').fadeOut();
			}
		}
	});
}