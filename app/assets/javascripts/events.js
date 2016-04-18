$( document ).ready(function() {
	console.log('si entra 1');
	$(".photo_upload").change(function(){
	console.log('si entra');
    readURL(this);
});

	$("#event_need_partner").change(function(){
    OcultardivE(this);
});

});

function OcultardivE(check,div){
	div=$("#descolabora");	
	if(check.checked){
		div.show();
		descripcion=document.getElementById("event_des_partner");
		descripcion.required = true;
	}else{
		div.hide();		
		descripcion=document.getElementById("event_des_partner");
		descripcion.required = false;		
	}
}
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function (e) {
		$('#img_prev')
		.attr('src', e.target.result)
		.width(150)
		.height(200);
		};

		reader.readAsDataURL(input.files[0]);
	}
}

// $( "#form_event" ).validate({
//     rules: {
//     	  if Document.getElementById("#descolabora") {
//            event_des_partner: { required: true }
//         }else{
//         	 event_des_partner: { required: false }
//         }
//     }
// });



