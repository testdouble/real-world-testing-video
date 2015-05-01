app = require("./../../../app.coffee")

beforeEach -> app.start("quietly")
afterEach -> app.stop()
