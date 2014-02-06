$ ->
  $('body').on 'click', '#new-todo', (e) ->
    e.preventDefault()
    $('#new-todo-form').show()

  $('body').on 'submit', '#new-todo-form', (e) ->
    e.preventDefault()

    $.post '/todos',
      description: @description.value,
      done: @done.checked
    ,
      (data) ->
        html = """
               <tr>
                 <td>#{data.description}</td>
                 <td><input type="checkbox" #{'checked' if data.done }/></td>
               </tr>
               """
        $('#todos tbody').append(html)
        $('#new-todo-form').hide()[0].reset()



