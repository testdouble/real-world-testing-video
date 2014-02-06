generatesProblem = require('./generates-problem')
savesProblem = require('./saves-problem')
presentsProblem = require('./presents-problem')

module.exports =
  get: ->
    problem = generatesProblem.generate()
    savedProblem = savesProblem.save(problem)
    presentsProblem.present(savedProblem)
