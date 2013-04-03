uploads
ajaxifierJs
	^ '/* jQuery based Ajaxifier
 * Copyright (c) 2008 Lukas Renggli, renggli@gmail.com
 *
 * For additional documentation see:
 * - http://www.lukas-renggli.ch/blog/ajaxification
 * - http://www.lukas-renggli.ch/blog/ajaxification-faq
 */

$(function () {
	
	// constants
	var HEAD_EXTRACTOR = /<head[^>]*>((.|\s)*?)<\/head>/im;
	var BODY_EXTRACTOR = /<body[^>]*>((.|\s)*?)<\/body>/im;
	var SCRIPT_EXTRACTOR = /<script(.|\s)*?\/script>/ig;
	var PARAM_EXTRACTOR = /\?(.*)$/i;
	var PARAM_CLEANER = /&_n/ig;
	
	// variables
	var activeHash = "";

	// ajax action
	function load(type, url, data) {
		var url = url + (type == "GET" ? "&_n" : "");
		$.ajax({
			type: type, url: url, data: data,
			beforeSend: function (xhr) {
				xhr.setRequestHeader("X-Requested-With", "Ajaxifier");
			},
			success: function (data) {
				$("head").html(HEAD_EXTRACTOR
					.exec(data)[1]
					.replace(SCRIPT_EXTRACTOR, ""));
				$("body").html(BODY_EXTRACTOR
					.exec(data)[1]);
				window.location.hash = activeHash = (type == "GET" ?
					PARAM_EXTRACTOR
						.exec(url)[1]
						.replace(PARAM_CLEANER, "")
					: "");
			}
		});
	}
	
	// click handler
	$(document).click(function (event) {
		
		// links
		var anchor = $(event.target).closest("a");
		if (anchor.length == 1) {
			load("GET", anchor.attr("href"));
			event.preventDefault();
		}
		
		// submit
		var submit = $(event.target).closest("input[type=submit], button[type=submit]");
		if (submit.length == 1) {
			var form = submit.closest("form");
			if (form.length == 1) {
				load("POST", form.attr("action"), form.find(":input").serialize() + "&" + submit.attr("name"));
				event.preventDefault();
			}
		}
		
	});
	
	// check for changes in the hash
	setInterval(function () {
		var currentHash = window.location.hash.substr(1);
		if (currentHash != activeHash)
			load("GET", "?" + (activeHash = currentHash));
	}, 250);

});'