
$("form#login-box").bind "ajax:success", (e, data, status, xhr) ->
    alert('hola')
    if data.success
      $('#Mymodal').modal('hide')      
    else
      alert('failure!')