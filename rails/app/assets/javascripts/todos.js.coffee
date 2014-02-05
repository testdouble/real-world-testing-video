$ ->
  $('body').on 'click', '#new-todo-link', (e) ->
    e.preventDefault()
    $('#new-todo-form').show()

  $('body').on 'submit', '#new-todo-form', (e) ->
    e.preventDefault()
    $.post '/todos',
      description: @['description'].value,
      done: @['done'].checked
    .done (data) ->
      html = "<tr><td>#{data['description']}</td><td>#{data['done']}</td></tr>"
      $('#todos tbody').append(html)
      $('#new-todo-form')[0].reset()
