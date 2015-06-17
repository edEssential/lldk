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
//= require jquery-ui.min
//= require image-hover
//= require modernizr 
//= require retina
//= require jquery.isotope.min
//= require jquery.ba-bbq.min
//= require jquery.isotope.load_home
//= require responsive-nav
//= require jquery.flexslider-min
//= require jquery.fancybox.pack
//= require jquery.slicknav
//= require image.cycle
//= require bootstrap
//= require jssor.slider.mini


$(document).ready(function() {
	
	$('a').each(function() {
	   var a = new RegExp('/' + window.location.host + '/');
	   if(!a.test(this.href)) {
	       $(this).click(function(event) {
	           event.preventDefault();
	           event.stopPropagation();
	           window.open(this.href, '_blank');
	       });
	   }
	});
	
	$(function(){
		$('#menu').slicknav();
	});
	
	$(".tips").tooltip();
	
	$('.delete_post').on('click', function() {
		if(confirm('Are you sure you want to delete this record')){
	    	return true
	    }else{
	        return false;
	    }
	});
});