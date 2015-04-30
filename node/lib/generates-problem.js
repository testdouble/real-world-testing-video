var picksRandom = require('./picks-random');

module.exports = function() {
  var _i, _j, _results, _results1;
  return {
    operator: picksRandom(['+', '-', '*', '/']),
    operands: {
      left: picksRandom((function() {
        _results = [];
        for (_i = 0; _i <= 100; _i++){ _results.push(_i); }
        return _results;
      }).apply(this)),
      right: picksRandom((function() {
        _results1 = [];
        for (_j = 0; _j <= 100; _j++){ _results1.push(_j); }
        return _results1;
      }).apply(this))
    }
  };
};
