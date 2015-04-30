express = require("express")

getsProblem = require('./lib/gets-problem')
savesProblem = require('./lib/saves-problem')

app = express()

app.use(express.bodyParser())

app.get "/", (req, res, err) ->
  res.send 200

app.get "/problem", (req, res, err) ->
  res.json(getsProblem())

app.get "/problem/:id", (req, res, err) ->
  res.json(savesProblem.retrieve(req.params.id))

app.post "/solution", (req, res, err) ->
  solution        = req.body
  originalProblem = savesProblem.retrieve(solution.problemId)
  if eval(originalProblem.description) == eval(solution.answer)
    res.send(202)
  else
    res.send(422)

module.exports =
  start: (quiet) ->
    @server = app.listen 8080, ->
      console.log("Now accepting requests at http://localhost:8080") unless quiet?

  stop: ->
    @server?.close()
