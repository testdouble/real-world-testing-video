# example Standalone jasmine project

This project includes Jasmine itself, several helper scripts, and an HTML "test runner"
file that allow you to run Jasmine tests without any additional tooling.

Because opening a URL in a browser from a `file://` protocol raises security
errors in most modern browsers, these files can be statically hosted using an
included Express.js application.

To run your tests, first install [Node.js](http://nodejs.org), then:

```
$ npm install
$ npm start
```

Navigate to [http://localhost:8081](http://localhost:8081) to run your tests.
