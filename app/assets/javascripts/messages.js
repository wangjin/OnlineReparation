function shownewsdiv() {
	$("#announcementsdiv").hide();
	$("#newsdiv").show("slide");
}

function shownannouncementdiv() {
	$("#newsdiv").hide();
	$("#announcementsdiv").show("slide");
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
	id = $("#news_id_hidden").val();
	$.get("/managercenter/save_news", {
		id : id,
		news_title : news_title,
		news_content : news_content
	}, function() {
		window.location.reload();
	});
}

function saveannouncement() {
	announcement_title = $("#announcement_title").val();
	announcement_content = announcement_content_editor.html();
	id = $("#announcement_id_hidden").val();
	$.get("/managercenter/save_announcement", {
		id : id,
		announcement_title : announcement_title,
		announcement_content : announcement_content
	}, function() {
		window.location.reload();
	});
}

function editnews(id) {
	news_title = $("#" + id + "_news_title").html();
	news_content = $("#" + id + "_news_content").text();
	$("#news_title").val(news_title);
	news_content_editor.html(news_content);
	$("#news_id_hidden").val(id);
	var mydiv = $("#newnewsdiv");
	left_value = ($(document).width() - mydiv.width()) / 2;
	top_value = document.documentElement.scrollTop + document.body.scrollTop + ($(window).height() - mydiv.height()) / 2;
	mydiv.css("top", top_value + 60).css("left", left_value).fadeIn(1000);
}

function editannouncement(id) {
	announcement_title = $("#" + id + "_announcement_title").html();
	announcement_content = $("#" + id + "_announcement_content").text();
	$("#announcement_title").val(announcement_title);
	announcement_content_editor.html(announcement_content);
	$("#announcement_id_hidden").val(id);
	var mydiv = $("#newannouncementdiv");
	left_value = ($(document).width() - mydiv.width()) / 2;
	top_value = document.documentElement.scrollTop + document.body.scrollTop + ($(window).height() - mydiv.height()) / 2;
	mydiv.css("top", top_value + 60).css("left", left_value).fadeIn(1000);
}

function deletenews(id) {
	$.get("/managercenter/delete_news", {
		id : id
	}, function() {
		$("#" + id + "_news_tr").fadeOut(500);
	});
}

function deleteannouncement(id) {
	$.get("/managercenter/delete_announcement", {
		id : id
	}, function() {
		$("#" + id + "_announcement_tr").fadeOut(500);
	});
}


