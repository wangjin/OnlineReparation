function accept_work(id) {
	$.get("/managercenter/accept_work", {
		id : id
	}, function() {
		$("#" + id + "_reparation_record_unrepair_tr").hide("slide");
	});
}

function show_reparation_record_unrepair() {
	$("#reparation_record_repairing").hide();
	$("#reparation_record_repaired").hide();
	$("#reparation_record_unrepair").fadeIn(1000);
}

function show_reparation_record_repairing() {
	$("#reparation_record_unrepair").hide();
	$("#reparation_record_repaired").hide();
	$("#reparation_record_repairing").fadeIn(1000);
}

function show_reparation_record_repaired() {
	$("#reparation_record_unrepair").hide();
	$("#reparation_record_repairing").hide();
	$("#reparation_record_repaired").fadeIn(1000);
}

function showconfirmdiv(id) {
	$("#reparation_record_id").val(id);
	var mydiv = $("#confirmdiv");
	left_value = ($(document).width() - mydiv.width()) / 2;
	top_value = document.documentElement.scrollTop + document.body.scrollTop + ($(window).height() - mydiv.height()) / 2;
	mydiv.css("top", top_value - 50).css("left", left_value).fadeIn(500);
}

function repaired(id) {
	material_id = $("#"+id+"_material_id").val();
	$.get("/managercenter/repaired", {
		material_id : material_id,
		id : id
	}, function() {
		$("#"+id+"_reparation_record_repairing_tr").hide("slide");
	})
}

function closeconfirmdiv() {
	$("#confirmdiv").hide("slide");
}

