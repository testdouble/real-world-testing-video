window.createApplication = ->
  $('.main').html(JST['app/templates/problems.us']())

$ ->
  createApplication()
