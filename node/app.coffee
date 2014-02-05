express = require("express")

app = express()

app.get "/problem", (req, res, err) ->
  res.send(501)

app.get "/problem/:id", (req, res, err) ->
  res.send(501)

app.post "/solution", (req, res, err) ->
  res.send(501)

module.exports =
  start: ->
    @server = app.listen 8080, ->
      console.log("Now accepting requests at http://localhost:8080")

  stop: ->
    @server?.close()
