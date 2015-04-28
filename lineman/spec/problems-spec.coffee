describe "rendering the UI", ->
  Given -> @$container = affix('.main') #<-- some container for the app
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> "<div>lol</div>"
  When  -> window.createApplication()
  Then  -> @$container.find('div').text() == "lol"
