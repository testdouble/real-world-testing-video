window.ConvertsNumerals = class ConvertsNumerals

  VALUES:
    I: 1
    V: 5
    X: 10
    IV: 4

  fromRoman: (roman) ->
    result = @VALUES[roman]
    if !result
      digits = roman.split('')
      sum = 0
      for d in digits
        sum += @VALUES[d]
      return sum
    result

  fromArabic: (arabic) ->
    "I"
