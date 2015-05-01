SandboxedModule = require('sandboxed-module')

global.requireSubject = (path, requires) ->
  SandboxedModule.require("./../../../#{path}",  {requires})
