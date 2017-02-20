// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

// ANIMATION 
	animationHover('.signing', '.logout', 'fadeIn');

	function animationClick(trigger, element, animation){
	  element = $(element);
		trigger = $(trigger);
	  trigger.click(
      function() {
          element.addClass('animated ' + animation);          
          //wait for animation to finish before removing classes
          window.setTimeout( function(){
              element.removeClass('animated ' + animation);
          }, 1000);           
	    });
	}

	function animationHover(trigger, element, animation){
    element = $(element);
    trigger = $(trigger);
    trigger.hover(
      function() {
          element.addClass('animated ' + animation);          
      },
      function(){
          //wait for animation to finish before removing classes
          window.setTimeout( function(){
              element.removeClass('animated ' + animation);
          }, 1000);           
      });
	}

});