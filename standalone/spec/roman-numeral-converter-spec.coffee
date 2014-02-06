describe 'ConvertsNumerals', ->
  Given -> @subject = new ConvertsNumerals()

  describe '#fromRoman', ->
    Then -> @subject.fromRoman("I") == 1
    And -> @subject.fromRoman("II") == 2
    And -> @subject.fromRoman("III") == 3
    And -> @subject.fromRoman("IV") == 4
    And -> @subject.fromRoman("V") == 5
    And -> @subject.fromRoman("VI") == 6
    And -> @subject.fromRoman("VII") == 7
    And -> @subject.fromRoman("X") == 10


  describe '#fromArabic', ->
    When -> @result = @subject.fromArabic(1)
    Then -> @result == "I"
