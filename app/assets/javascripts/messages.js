function shownewsdiv() {
	$("#announcementsdiv").hide();
	$("#newsdiv").show("slide");
}

function shownannouncementdiv() {
	$("#newsdiv").hide();
	$("#announcementsdiv").show("slide");
}

function showeditdiv(div) {
	var mydiv = $("#edit" + div + "div");
	left_value = ($(document).width() - mydiv.width()) / 2;
	top_value = document.documentElement.scrollTop + document.body.scrollTop + ($(window).height() - mydiv.height()) / 2;
	mydiv.css("top", top_value).css("left", left_value).show();
}

function shownewdiv(div) {
	var mydiv = $("#new" + div + "div");
	left_value = ($(document).width() - mydiv.width()) / 2;
	top_value = document.documentElement.scrollTop + document.body.scrollTop + ($(window).height() - mydiv.height()) / 2;
	mydiv.css("top", top_value + 60).css("left", left_value).fadeIn(1000);
}

function closenewdiv(div) {
	$("#new" + div + "div").fadeOut();
}

function savenews() {
	news_title = $("#news_title").val();
	news_content = news_content_editor.html();
	$.get("/managercenter/save_news", {
		news_title : news_title,
		news_content : news_content
	}, function() {
		window.location.reload();
	});
}

function saveannouncement() {
	announcement_title = $("#announcement_title").val();
	announcement_content = announcement_content_editor.html();
	$.get("/managercenter/save_announcement", {
		announcement_title : announcement_title,
		announcement_content : announcement_content
	}, function() {
		window.location.reload();
	});
}


saveannouncement