var express      = require("express");
var getsProblem  = require('./lib/gets-problem');
var savesProblem  = require('./lib/saves-problem');
var checksAnswer = require('./lib/checks-answer');
var app          = express();

app.use(express.bodyParser());

app.get("/", function(req, res, err) {
  res.send(200);
});

app.get("/problem", function(req, res, err) {
  res.json(getsProblem());
});

app.get("/problem/:id", function(req, res, err) {
  res.json(savesProblem.retrieve(req.params.id));
});

app.post("/solution", function(req, res, err) {
  res.send(checksAnswer(req.body.problemId, req.body.answer) ? 202 : 422);
});

module.exports = {
  start: function(quiet) {
    this.server = app.listen(8080, function() {
      if (quiet === null) {
        return console.log("Now accepting requests at http://localhost:8080");
      }
    });
  },
  stop: function() {
    if(this.server) {
      this.server.close();
    }
  }
};
