_ = require('lodash')

problemDatabase = []

module.exports = (problem) ->
  problemDatabase.push(problem)
  _(problem).tap (problem) ->
    problem.id = problemDatabase.indexOf(problem)

module.exports.retrieve = (id) ->
  problemDatabase[id]
