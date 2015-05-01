savesProblem = require('./saves-problem')

module.exports = (id, answer) ->
  eval(savesProblem.retrieve(id)?.description) == eval(answer)
