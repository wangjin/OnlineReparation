function sendworker(id){
	accendant_id = $("#"+id+"_accendant").val();
	$.get("/managercenter/send_worker",{
		user_id :accendant_id,
		id:id
	},function(){
		$("#"+id+"_reparation_information_tr").hide("slide");
	});
}

function getwork(id){
	$.get("/managercenter/send_worker",{id:id},function(){
		$("#"+id+"_reparation_information_tr").hide("slide");
	});
}

function show_reparation_record(){
	$("#reparation_information").hide();
	$("#reparation_record").fadeIn(1000);
}

function show_reparation_information(){
	$("#reparation_record").hide();
	$("#reparation_information").fadeIn(1000);
}
