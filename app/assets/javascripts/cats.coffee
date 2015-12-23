# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('html').bind 'submit', (event)->
    event.preventDefault()
    postUrl = $('form#clicker').data('post-url')
    $.ajax
      url: postUrl
      method: 'PUT'
      dataType: 'script'
      success: (data, textStatus, jqXHR) -> 
        $('form#clicker').unbind('submit')
