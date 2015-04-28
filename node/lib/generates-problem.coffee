picksRandom = require('./picks-random')

module.exports = ->
  operator: picksRandom(['+', '-', '*', '/'])
  operands:
    left: picksRandom([0..100])
    right: picksRandom([0..100])
