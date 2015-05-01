describe "checksAnswer", ->
  Given -> @subject = requireSubject 'lib/checks-answer',
    './saves-problem':  @savesProblem = jasmine.createSpyObj('savesProblem', ['retrieve'])

  Given -> @id = 1337
  Given -> @savesProblem.retrieve.when(@id).thenReturn(description: '1 + 1')

  context 'correct', ->
    When -> @result = @subject(@id, 2)
    Then -> @result == true

  context 'incorrect', ->
    When -> @result = @subject(@id, 3)
    Then -> @result == false

  context 'invalid ID', ->
    When -> @result = @subject('garbage', 2)
    Then -> @result == false
