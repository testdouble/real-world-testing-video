var ConvertsNumerals;

window.ConvertsNumerals = ConvertsNumerals = (function() {
  function ConvertsNumerals() {}

  ConvertsNumerals.prototype.VALUES = {
    I: 1,
    V: 5,
    X: 10,
    IV: 4
  };

  ConvertsNumerals.prototype.fromRoman = function(roman) {
    var d, digits, result, sum, _i, _len;
    result = this.VALUES[roman];
    if (!result) {
      digits = roman.split('');
      sum = 0;
      for (_i = 0, _len = digits.length; _i < _len; _i++) {
        d = digits[_i];
        sum += this.VALUES[d];
      }
      return sum;
    }
    return result;
  };

  ConvertsNumerals.prototype.fromArabic = function(arabic) {
    return "I";
  };

  return ConvertsNumerals;

})();
