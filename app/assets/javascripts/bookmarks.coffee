# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# The tab menu of the overview page
$ ->
	$('.menu .item')
		.tab()
	;

# The dropdown list of the new page	
	$('select.dropdown')
  .dropdown()
	;
