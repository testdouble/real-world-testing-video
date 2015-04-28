describe "rendering the UI", ->
  Given -> @$container = affix('.main') #<-- some container for the app
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> "<div>lol</div>"
  Given -> window.createApplication()
  # ^ b/c When always runs after ALL givens, change this to a Given so downstream
  # behavior can rely on it w/o everything becoming a When
  Then  -> @$container.find('div').text() == "lol"

  describe "fetching a new problem", ->
    Given -> @$button = @$container.affix('button.new-problem')
    Given -> spyOn($, 'get')
    When  -> @$button.trigger('click')
    Then  -> expect($.get).toHaveBeenCalledWith('/problem', jasmine.any(Function))
