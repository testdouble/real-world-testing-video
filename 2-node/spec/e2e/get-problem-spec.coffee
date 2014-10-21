describe "GET /problem", ->
  When (done) -> GET "/problem", done, (err, res) =>
    @result = res
    @json = res.json
  Then -> @result.statusCode == 200
  And -> expect(@json.id).toEqual(jasmine.any(Number))
  And -> @json.operands.left >= 0 && @json.operands.left <= 100
  And -> @json.operands.right >= 0 && @json.operands.right <= 100
  And -> _(["*", "+", "-", "/"]).include(@json.operator)
  And -> @json.description == "#{@json.operands.left} #{@json.operator} #{@json.operands.right}"

describe "GET /problem/:id", ->
  Given (done) -> GET "/problem", done, (err, res) => @problem = res.json
  When (done) -> GET "/problem/#{@problem.id}", done, (err, res) => @result = res
  Then -> expect(@result.json).toEqual(@problem)

describe "POST /solution", ->
  Given (done) -> GET "/problem", done, (err, res) => @problem = res.json

  context "a correct answer", ->
    Given -> @solution =
      problemId: @problem.id
      answer: eval(@problem.description)
    When (done) -> POST "/solution", @solution, done, (err, res) => @result = res
    Then -> @result.statusCode == 202

  context "an incorrect answer", ->
    Given -> @solution =
      problemId: @problem.id
      answer: eval(@problem.description) + 1
    When (done) -> POST "/solution", @solution, done, (err, res) => @result = res
    Then -> @result.statusCode == 422
