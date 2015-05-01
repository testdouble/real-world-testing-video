#global module:false

module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-jasmine-bundle')

  grunt.initConfig
    spec:
      unit:
        options:
          helpers: "spec/unit/helpers/**/*.{js,coffee}"
          specs: "spec/unit/**/*.{js,coffee}"
          minijasminenode:
            showColors: true

      e2e:
        options:
          helpers: "spec/e2e/helpers/**/*.{js,coffee}"
          specs: "spec/e2e/**/*.{js,coffee}"
          minijasminenode:
            showColors: true
            defaultTimeoutInterval: 10000

  grunt.registerTask("default", ["spec:unit", "spec:e2e"])
