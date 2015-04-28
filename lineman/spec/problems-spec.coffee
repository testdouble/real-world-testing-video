describe "rendering the UI", ->
  Given -> @$container = affix('.main') #<-- some container for the app
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> "<div>lol</div>"
  Given -> window.createApplication()
  # ^ b/c When always runs after ALL givens, change this to a Given so downstream
  # behavior can rely on it w/o everything becoming a When
  Then  -> @$container.find('div').text() == "lol"

  describe "fetching a new problem", ->
    Given -> @$button = @$container.affix('button.new-problem')
    Given -> spyOn($, 'get') #<-- spies record everything, so it has it.
    Given -> @captor = jasmine.captor()
    When  -> @$button.trigger('click')
    And   -> expect($.get).toHaveBeenCalledWith('/problem', @captor.capture())
    # ^ not that this "Then" is now an "And" so the @captor.capture() can affect downstream tests

    describe "rendering the new problem", ->
      Given -> @$latestProblem = @$container.affix('.latest-problem')
      Given -> @problem = description: '1 + 1'
      # ^ recall that all problems will have a description
      # I try to keep my test data to a bare minimum to make clear the contract in the code
      # (e.g. this code doesn't rely on ID, operands, etc. yet)
      When  -> @captor.value(@problem)
      Then  -> @$latestProblem.text() == "1 + 1"
