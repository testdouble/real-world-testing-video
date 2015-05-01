var _ = require('lodash');

module.exports = function(pickFrom) {
  return _(pickFrom).shuffle()[0];
};
