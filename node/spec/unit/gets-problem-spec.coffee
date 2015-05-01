describe 'getsProblem', ->
  Given -> @generatesProblem = jasmine.createSpy('generatesProblem')
  Given -> @savesProblem = jasmine.createSpy('savesProblem')
  Given -> @presentsProblem = jasmine.createSpy('presentsProblem')
  Given -> @subject = requireSubject 'lib/gets-problem',
    './generates-problem': @generatesProblem
    './saves-problem': @savesProblem
    './presents-problem': @presentsProblem

  describe 'get', ->
    Given -> @generatesProblem.andReturn("generated problem")
    Given -> @savesProblem.when("generated problem").thenReturn("saved problem")
    Given -> @presentsProblem.when("saved problem").thenReturn("problem with description")
    When -> @result = @subject()
    Then -> @result == "problem with description"
