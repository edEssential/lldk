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
//= require jquery-1.9.1.min
//= require jquery-migrate-1.2.1.min
//= require jquery-easing-1.3
//= require modernizr
//= require retina
//= require jquery.isotope.min
//= require jquery.ba-bbq.min
//= require jquery.isotope.load_home
//= require jquery.form
//= require input.fields
//= require responsive-nav
//= require jquery.flexslider-min
//= require jquery.fancybox.pack
//= require image-hover
//= require scrollup
//= require jquery.fitvids
//= require twitter/bootstrap
//= require jquery.slicknav
//= require jquery.fittext
//= require jquery.collapser
//= require mustache
//= require_tree ../../templates
//= require_tree .

$(window).load(function() { // makes sure the whole site is loaded
	$('#status').fadeOut(); // will first fade out the loading animation
	$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
	$('body').delay(550).css({'overflow':'visible'});
})

$(window).load(function() { // makes sure the whole site is loaded
	$('#status').fadeOut(); // will first fade out the loading animation
	$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
	$('body').delay(550).css({'overflow':'visible'});
})

$(document).ready(function() {
    $('.slides').cycle({
		fx: 'fade',
		timeout:  8000,
		speed:  1500 
	});
	$('.widgetFrame').contents().find('.gr_reviews_showing').css({
	    display: none
	});
	$("a").click(function() {
		link_host = this.href.split("/")[2];
	    document_host = document.location.href.split("/")[2];

	    if (link_host != document_host) {
	      window.open(this.href);
	      return false;
	    }
	});
});