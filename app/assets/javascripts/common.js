function submitForm(form) {
	form.submit();
}

function edit(id) {
	$("#" + id + "_tr").hide();
	$("#" + id + "_show").show("slide");
}

function cancel(id) {
	$("#" + id + "_show").hide();
	$("#" + id + "_tr").show("slide");
}

function save(id) {
	realname = $("#" + id + "_realname").val();
	cellphone = $("#" + id + "_cellphone").val();
	email = $("#" + id + "_email").val();
	$.get("/managercenter/save_accendant", {
		id:id,
		realname : realname,
		cellphone : cellphone,
		email : email
	}, function() {
		$("#" + id + "_realname_td").text(realname);
		$("#" + id + "_cellphone_td").text(cellphone);
		$("#" + id + "_email_td").text(email);
		$("#" + id + "_show").hide();
		$("#" + id + "_tr").show("slide");
	});
}

function newuser(){
	$("#new_user").show("slide");
}

