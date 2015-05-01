_ = require('lodash')

module.exports = (problem) ->
  _(problem).tap (p) ->
    p.description = "#{p.operands.left} #{p.operator} #{p.operands.right}"
