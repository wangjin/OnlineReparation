function submitForm(form) {
	form.submit();
}

function edit(id) {
	$("#" + id + "_tr").hide();
	$("#" + id + "_show").show("slide");
}


function cancelsave(id) {
	$("#" + id + "_show").hide();
	$("#" + id + "_tr").show("slide");
}

function save(id) {
	username = $("#" + id + "_username").val();
	password = $("#" + id + "_password").val();
	realname = $("#" + id + "_realname").val();
	cellphone = $("#" + id + "_cellphone").val();
	email = $("#" + id + "_email").val();
	$.get("/managercenter/save_accendant", {
		id : id,
		username : username,
		password : password,
		realname : realname,
		cellphone : cellphone,
		email : email
	}, function() {
		$("#" + id + "_username_td").text(username);
		$("#" + id + "_password_td").text(password);
		$("#" + id + "_realname_td").text(realname);
		$("#" + id + "_cellphone_td").text(cellphone);
		$("#" + id + "_email_td").text(email);
		$("#" + id + "_show").hide();
		$("#" + id + "_tr").show("slide");
	});
}

function newuser() {
	$("#new_user").show("slide");
}
function cancel() {
	$("#new_user").hide("slide");
}


function adduser() {
	username = $("#new_username").val();
	password = $("#new_password").val();
	realname = $("#new_realname").val();
	cellphone = $("#new_cellphone").val();
	email = $("#new_email").val();
	$.get("/managercenter/add_accendant", {
		username : username,
		password : password,
		realname : realname,
		cellphone : cellphone,
		email : email
	}, function() {
		// $("#new_username_td").text(username);
		// $("#new_password_td").text(password);
		// $("#new_realname_td").text(realname);
		// $("#new_cellphone_td").text(cellphone);
		// $("#new_email_td").text(email);
		/*
		 $.get("/managercenter/accendants",{},function(result){
		 $("#replacement").html(result);
		 });*/
		window.location.reload();
	});
}

function deleteuser(id) {
	$.get("/managercenter/delete_accendant", {
		id : id
	}, function() {
		$("#"+id+"_tr").hide("slide");
	});
}
