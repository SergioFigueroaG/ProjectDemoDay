$(".photo_upload").change(function(){
	readURL(this);
});

$("#event_need_partner").change(function(){
	div=$("#descolabora");	
	OcultardivE(this,div);
});
$("#check_inviteds").change(function(){
	div=$("#inviteds");	
	OcultardivE(this,div);
});

function OcultardivE(check,div){
	
	if(check.checked){
		div.removeClass('hidden');
		
		if(div.attr('id')=="descolabora"){
			descripcion=document.getElementById("event_des_partner");
			descripcion.required = true;
		}
	}else{
		div.addClass('hidden');	
		if(div.attr('id')=="descolabora"){	
			descripcion=document.getElementById("event_des_partner");
			descripcion.required = false;
		}		
	}
}
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function (e) {
			$('#img_prev')
			.attr('src', e.target.result)
		};

		reader.readAsDataURL(input.files[0]);
	}
}
