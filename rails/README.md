# jasmine-rails example

To run your tests in this Rails project with [jasmine-rails](https://github.com/searls/jasmine-rails), first set up the project with:

```
$ bundle install
```

Then verify the specs run from the command line:

```
$ bundle exec rake spec:javascripts
```

Next, try starting your app and visiting the interactive test runner:

```
$ bundle exec rails server
```

And visit [http://localhost:3000/specs](http://localhost:3000/specs)
