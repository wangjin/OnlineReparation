function hidden() {
	$("#location").hide();
}

function show(x, y) {
	$("#location").css("left", x - 390);
	$("#location").css("top", y - 168);
	$("#location").fadeIn('slide');
}


$(document).ready(function() {
	hidden();

	$("#showdiv").click(function() {
		var height = $(this).height();
		var top = $(this).offset().top;
		var left = $(this).offset().left;
		show(left, height + top);
	});

	$("#selectone").change(function() {
		$.get("/reparation/sublocation", {
			parentId : $(this).val().split("|")[0]
		}, function(result) {
			$("#leveltwo").html(result);
		});
	});
	
	$("#aconfirm").click(function(){
		var one = $("#selectone").val().split("|")[1];
		alert(one)
		var two = $("#selecttwo").val().split("|")[1];
		alert(two)
		var address = one + " " + two
		alert(address)
		hidden();
		$("#address").val(address);
	});
})
