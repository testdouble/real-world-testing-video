describe 'ConvertsNumerals', ->
  Given -> @subject = new ConvertsNumerals()

  describe '#fromRoman', ->
    Then -> @subject.fromRoman("I")   == 1
    Then -> @subject.fromRoman("II")  == 2
    Then -> @subject.fromRoman("III") == 3
    Then -> @subject.fromRoman("IV")  == 4
    Then -> @subject.fromRoman("V")   == 5
    Then -> @subject.fromRoman("VI")  == 6
    Then -> @subject.fromRoman("VII") == 7
    Then -> @subject.fromRoman("X")   == 10


  describe '#fromArabic', ->
    When -> @result = @subject.fromArabic(1)
    Then -> @result == "I"
