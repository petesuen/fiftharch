var imgs_index = 0;

function get_img_caption(id) {
	ajaxGet('/blog/get_img_caption', {'id': id}, function(content){
        //onSuccess
		$('#img_caption').text(content.caption);		
    });
}

function prev_img() {
	if (imgs_index==0)
		return;
	else {
		$('#img_'+imgs_index).hide();
		imgs_index--;
		$('#img_'+imgs_index).show();
		$('#img_index').text((imgs_index+1));
		
		get_img_caption($('#img_'+imgs_index).attr("img_id"));
	} 
}

function next_img() {
	if ($("#img_" + (imgs_index+1)).length) {
		$('#img_'+imgs_index).hide();
		imgs_index++;
		$('#img_'+imgs_index).show();
		$('#img_index').text((imgs_index+1));
		
		get_img_caption($('#img_'+imgs_index).attr("img_id"));
	} else return; 
}