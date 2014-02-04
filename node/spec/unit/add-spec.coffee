describe 'adding numbers', ->
  Given -> @number = 1
  When -> @result = @number + 1
  Then -> @result == @number + 1
