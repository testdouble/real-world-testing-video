describe 'the 21st century', ->
  Given -> @date = new Date()
  When -> @result = @date.getFullYear()
  Then -> @result > 2000
  And -> @result <= 2100
