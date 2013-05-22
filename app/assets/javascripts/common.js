function submitForm(form){
	form.submit();
}

function edit(id){
	$("#"+id+"_tr").hide();
	$("#"+id+"_show").show("slide");
}

function cancel(id){
	$("#"+id+"_show").hide();
	$("#"+id+"_tr").show("slide");
}

function save(id){
	$("#"+id+"_show").hide();
	$("#"+id+"_tr").show("slide");
	realname = $("#"+id+"realname").val();
	cellphone = $("#"+id+"cellphone").val();
	email = $("#"+id+"email").val();
	
}
