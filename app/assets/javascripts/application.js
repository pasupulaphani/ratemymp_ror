// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var postcode = function() {
	var postcode = $('#pc').val();

	$.jsonp({
		url: "http://www.theyworkforyou.com/api/getMP?key=AeLEgrG66uiVBxMSy4BxmBmX&postcode=" + postcode + "&output=js&callback=?",
		callback: "i_jqjsp",
		success: function(json) {
			showMp(json);
		},
		error: function() {
		   // This will be called in case of error no matter the callback name
		}
	});

}

var showMp = function(json) {
	console.log(json);
	$("#mpPhoto").attr('src','http://www.theyworkforyou.com/' + json.image);		
	$("#mpName").text(json.full_name);

	location.hash = "#two";
}
