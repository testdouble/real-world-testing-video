var savesProblem = require('./saves-problem');

module.exports = function checksAnswer(id, answer) {
  var problem = savesProblem.retrieve(id);
  return problem !== undefined && eval(problem.description) === eval(answer);
}
