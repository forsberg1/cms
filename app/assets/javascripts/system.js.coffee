# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $(document).trigger 'pageChanged'
  $(document).trigger 'pageUpdated'

$(document).bind 'end.pjax', ->
  $(document).trigger 'pageChanged'
  $(document).trigger 'pageUpdated'

$(document).bind 'ajaxComplete', ->
  $(document).trigger 'pageUpdated'

$ -> $('a:not([data-remote]):not([data-behavior]):not([data-toggle]):not([data-remote])').pjax('[data-pjax-container]')

$ ->
	$('#myModal').hide()

	$('.checkbox-p-settings').bind 'click',  =>
		console.log "dsadad" # Toggle options for pages

	# Create pages
	$('.create-page').on 'click', =>
		sitename = $('#siteName').attr("value")
		sitetext = $('#textarea').attr("value")
		$.ajax '/create',
			type: 'POST'
			data: 'ajax=1&pagename='+sitename+'&pagetext='+sitetext
			success: (msg) ->
				alert "Sidan skapad utan problem"
				$('a.close').click()
				location.reload()



