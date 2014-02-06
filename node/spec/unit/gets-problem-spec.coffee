describe 'getsProblem', ->
  Given -> @generatesProblem = generate: jasmine.createSpy('generate')
  Given -> @savesProblem = jasmine.createSpyObj('savesProblem', ['save'])
  Given -> @presentsProblem = jasmine.createSpyObj('presentsProblem', ['present'])
  Given -> @subject = requireSubject 'lib/gets-problem',
    './generates-problem': @generatesProblem
    './saves-problem': @savesProblem
    './presents-problem': @presentsProblem

  describe 'get', ->
    Given -> @generatesProblem.generate.andReturn("generated problem")
    Given -> @savesProblem.save.when("generated problem").thenReturn("saved problem")
    Given -> @presentsProblem.present.when("saved problem").thenReturn("problem with description")
    When -> @result = @subject.get()
    Then -> @result == "problem with description"
