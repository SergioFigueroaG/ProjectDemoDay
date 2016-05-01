	$(".photo_upload").change(function(){
		readURL(this);
	});

	$("#event_need_partner").change(function(){
		div=$("#descolabora");	
		OcultardivE(this,div ,"event_des_partner");
	});
	$("#check_inviteds").change(function(){
		div=$("#inviteds");	
		OcultardivE(this,div,"event_userinvited_id");
	});

function OcultardivE(check,div, namereq){
	
	if(check.checked){
		div.removeClass('hidden');		
			descripcion=document.getElementById(namereq);
			descripcion.required = true
	}else{
		div.addClass('hidden');			
			descripcion=document.getElementById(namereq);
			descripcion.required = false;
			descripcion.value="";		
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
$(function () {
	$('#event_userinvited_id').tokenInput('/invited_users.json', { 
		crossDomain: false,
		prePopulate: $('#event_userinvited_id').data('pre'),	
		theme: "facebook",
		resultsFormatter: function(item){ 
			return "<li>" + 
			"<img src='" + item.img + "' title='" + item.name + "' height='25px' width='25px' />" + 
			"<div style='display: inline-block; padding-left: 10px;'>"+
			"<div class='full_name'>" + item.username + " " + item.name + "</div>"+
			"<div class='email'>" + item.email + "</div>"+
			"</div>"+
			"</li>" 
		},
		tokenFormatter: function(item) { return "<li><p>" + item.name + " - " + item.username + "</p></li>" },
	});
	

});

