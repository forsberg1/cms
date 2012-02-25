# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $('#myModal').hide()
  $('.hidden').hide()
  $(".delete-page").on "click", (event) =>
    event.preventDefault();
    $(".delete-page").fadeOut "fast" 
    $('.hidden').fadeIn "fast"
    

  $(document).trigger 'pageChanged'
  $(document).trigger 'pageUpdated'

$(document).bind 'end.pjax', ->
  $(document).trigger 'pageChanged'
  $(document).trigger 'pageUpdated'

$(document).bind 'ajaxComplete', ->
  $(document).trigger 'pageUpdated'
$ -> $('a:not([data-remote]):not([data-behavior]):not([data-toggle]):not([data-remote])').pjax('[data-pjax-container]')


	

	




