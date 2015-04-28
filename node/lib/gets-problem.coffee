generatesProblem = require('./generates-problem')
savesProblem = require('./saves-problem')
presentsProblem = require('./presents-problem')

module.exports = ->
  presentsProblem(savesProblem(generatesProblem()))
