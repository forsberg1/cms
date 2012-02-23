# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

delay = (ms, func) -> setTimeout func, ms

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
				#alert "Sidan skapad utan problem"
				$('a.close').click()
				location.reload()
	# delete page
	$('.delete-page').on 'click', =>
		siteid = $('.delete-page').attr "data-id" 
		$.ajax '/delete'
			type: 'POST'
			data: 'ajax=1&id='+siteid
			success: (msg) ->
				#alert "Sidan togs bort ur systemet"
				location.reload()
	#Change page
	###$('.update-page').on 'click', =>
		siteid = $('.update-page').attr "data-id"
		sitetext = $('#focusedInput').attr("value")
		$.ajax '/update'
			type: 'POST'
			data: 'ajax=1&id='+siteid+'&name='+sitetext
			success: (msg) ->
                $('#change').addClass "success"
                delay 1000, -> $('#change').removeClass "success"###
                




