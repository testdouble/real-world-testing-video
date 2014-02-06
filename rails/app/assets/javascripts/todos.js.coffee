$ ->
  $('#new-todo').on 'click', (e) ->
    e.preventDefault()
    $('#new-todo-form').show()

  $('#new-todo-form').on 'submit', (e) ->
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



