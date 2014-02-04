# example Lineman project

Every [Lineman](http://linemanjs.com) app ships with some sensible Jasmine testing defaults.

## Getting Lineman installed

It's recommended you have Lineman installed globally:

```
$ npm install -g lineman
$ lineman build #<-- will build the project from a local binary
```

Optionally, you may also install and run Lineman locally:

```
$ npm install lineman
$ ./node_modules/.bin/lineman build #<-- will build the project from a local binary
```

## Running specs in development

The lineman TDD workflow requires two long-running processes, so we recommend you run in two separate terminal sessions during development.

In the first terminal:

```
$ lineman run
```

Which will spin up a server on [http://localhost:8000](http://localhost:8000) and watch for any meaningful file changes in the project.

In the second terminal:

```
$ lineman spec
```

This will start an interactive [testem](https://github.com/airportyh/testem) session. Virtually any browser can attach to testem by navigating to [http://localhost:7357/](http://localhost:7357/). The interactive shell will aggregate each browser's results in tabs (which are navigable with the arrow keys).

While `lineman run` will watch for file changes to your project, `lineman spec` is configured to trigger a new test run whenever your compiled/concatenated JavaScript sources or specs change.

## Running specs in CI

To run specs in a single-shell, non-interactive, headless environment, as you would for continuous integration, you'll first need [PhantomJS](http://phantomjs.org/download.html) built and on your `PATH`, then run:

```
$ lineman spec-ci
```

This will first do a full build of your project and then run the tests with testem's CI mode against PhantomJS and report the results in a [TAP](http://en.wikipedia.org/wiki/Test_Anything_Protocol) format.


