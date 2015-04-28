_ = require('lodash')

describe "savesProblem", ->
  Given -> @subject = requireSubject('lib/saves-problem')
    # again, i think this is a "pure function" leaf node w/ no collaborators, so no fakes

  Given -> @problem = fake: "problem stuff"
  When  -> @result = @subject(@problem)
  Then  -> _(@result.id).isNumber()
  And   -> @result.fake == "problem stuff"

  describe ".retrieve", ->
    When -> @retrieved = @subject.retrieve(@result.id)
    Then -> expect(@result).toEqual(@retrieved)
