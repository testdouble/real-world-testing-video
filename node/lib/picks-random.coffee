_ = require('lodash')

module.exports = (pickFrom) ->
  _(pickFrom).shuffle()?[0]
