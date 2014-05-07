render = ->
  $('.main').html(JST['app/templates/problems.us']())

$ ->
  render()
  $('.main').on 'click', 'button.new-problem', ->
    # get a new problem (e.g. $.get '/problem/random')

  $('.main').on 'click', 'button.solve-problem', ->
    # attempt a solution (e.g. $.post '/solution')
