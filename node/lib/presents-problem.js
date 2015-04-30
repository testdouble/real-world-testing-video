var _ = require('lodash');

module.exports = function(problem) {
  return _(problem).tap(function(p) {
    p.description = "" + p.operands.left + " " + p.operator + " " + p.operands.right;
  });
};
