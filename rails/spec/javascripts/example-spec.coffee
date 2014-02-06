describe 'todos', ->
  Given -> @$form = affix("form#new-todo-form")
  Given -> @$form.affix('input[name=description]')
  Given -> @$form.affix('input[name=done][type=checkbox]')


  describe 'showing the form', ->
    Given -> @$form.hide()
    Given -> @$button = affix('#new-todo')
    When -> @$button.trigger
      type: 'click'
      preventDefault: @preventDefault = jasmine.createSpy("preventDefault")
    Then -> expect(@preventDefault).toHaveBeenCalled()
    Then -> @$form.is(':visible')

  describe 'submitting/creating the todo', ->
    Given -> @event = jQuery.Event('submit')
    Given -> spyOn(@event, 'preventDefault').andCallThrough()
    Given -> spyOn($, 'post')

    Given -> @$form.find('[name=description]').val('foo')
    Given -> @$form.find('[name=done]').prop('checked', true)

    Given -> @captor = jasmine.captor()

    When -> @$form.trigger(@event)
    When -> expect($.post).toHaveBeenCalledWith("/todos", {description: "foo", done: true}, @captor.capture())
    Then -> expect(@event.preventDefault).toHaveBeenCalled()

    describe 'POST response from server', ->
      Given -> @$todos = affix('#todos tbody')
      When -> @captor.value(description: "Foo.", done: true)
      Then -> @$form.is(':hidden')
      And -> @$form.find('[name=description]').val() == ""
      And -> @$form.find('[name=done]').prop('checked') == false




































