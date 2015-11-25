# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.author_image').click () ->
    $(this).dimmer('show')
  $('.author_image').mouseenter () ->
    $(this).dimmer('show')
  $('.author_image').mouseleave () ->
    $(this).dimmer('hide')

