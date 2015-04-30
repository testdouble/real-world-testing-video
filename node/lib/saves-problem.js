var _               = require('lodash');
var problemDatabase = [];

module.exports = function(problem) {
  problemDatabase.push(problem);
  return _(problem).tap(function(problem) {
    problem.id = problemDatabase.indexOf(problem);
  });
};

module.exports.retrieve = function(id) {
  return problemDatabase[id];
};
