// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

/**!
 * @preserve Color animation plugin for jQuery 1.8+
 * http://www.bitstorm.org/jquery/color-animation/
 * Copyright 2011, 2012 Edwin Martin <edwin@bitstorm.org>
 * Released under the MIT and GPL licenses.
 */
$(function(){
	$(".post").mouseover(function(){
		$(this).css("background-color","#F8F8F8");
		$(this).children("a").toggle();
	});
	
	$(".post").mouseout(function(){
		$(this).css("background-color","#FFFFFF");
		$(this).children("a").toggle();
	});
	
	$('.post_delete').click(function(){
		$(this).parent.hide();
	});
});

