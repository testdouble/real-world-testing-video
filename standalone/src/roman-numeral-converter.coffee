window.ConvertsNumerals = class ConvertsNumerals

  VALUES:
    I: 1
    V: 5
    X: 10

  fromRoman: (roman) ->
    digits = roman.split('')
    sum = 0
    for d in digits
      sum += @VALUES[d]
    sum

  fromArabic: (arabic) ->
    "I"
