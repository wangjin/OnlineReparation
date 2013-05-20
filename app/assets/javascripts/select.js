function hidden() {
	$("#location").hide();
}

function show(x,y) {
	$("#location").css("left",x-110);
	$("#location").css("top",y-155);
	$("#location").show('slow');
}


$(document).ready(function() {
	hidden();
	
	$("#showdiv").click(function(event){
		show(event.pageX,event.pageY);
	});
	
	
	$("#levelone").change(function() {
		$.get("/reparation/sublocation", {
			parentId : $(this).val()
		}, function(result) {
			$("#leveltwo").html(result);
		});
	})
})
