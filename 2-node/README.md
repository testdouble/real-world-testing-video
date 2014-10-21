# example Node project with grunt & grunt-jasmine-bundle

To get started, install your dependencies:

```
$ npm install
```

## Running the server

The server can be started by running:

```
$ npm start
```

This will start a server up at [http://localhost:8080](http://localhost:8080).

## Install Grunt Command Line Tool

Install grunt and grunt-cli globally.

```
$ npm install -g grunt
$ npm install -g grunt-cli
```

## Running tests

The project has two test suites, one for isolated unit tests and one for end-to-end ("e2e") integration tests. You can run either of them with:

```
$ grunt spec:unit
```

or

```
$ grunt spec:e2e
```

Simply executing `grunt` will run both suites in succession.

