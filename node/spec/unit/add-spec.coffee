describe 'adding numbers', ->
  Given -> @subject = requireSubject('lib/add')
  When -> @result = @subject.add(5, 7)
  Then -> @result == 12
