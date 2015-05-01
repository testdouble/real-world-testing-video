var generatesProblem = require('./generates-problem');
var savesProblem     = require('./saves-problem');
var presentsProblem  = require('./presents-problem');

module.exports = function() {
  return presentsProblem(savesProblem(generatesProblem()));
};
