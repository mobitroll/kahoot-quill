# kahoot-quill

This repo is a fork of [Quill](https://github.com/quilljs/quill), a modern rich text editor built for compatibility and extensibility. It was created by [Jason Chen](https://twitter.com/jhchen) and [Byron Milligan](https://twitter.com/byronmilligan) and open sourced by [Salesforce.com](http://www.salesforce.com).

To get started with Quill, check out the [Github Page](http://quilljs.com/) or jump straight into the [demo](http://quilljs.com/examples/).

Please see the official [Quill README](https://github.com/quilljs/quill/blob/develop/README.md) for more information about the base project and its development.

## Release process

TBC

## Local Development of kahoot-quill

Quill's source is in [Coffeescript](http://coffeescript.org/) and utilizes [Browserify](http://browserify.org/) to organize its files.

### Installation

    npm install -g grunt-cli
    npm install

### Building

    grunt dist - compile and browserify
    grunt server - starts a local server that will build and serve assets on the fly

### Examples

With the local server (`grunt server`) running you can try out some minimal examples on:

- [localhost:9000/examples/index.html](http://localhost:9000/examples/index.html)
- [localhost:9000/examples/advanced.html](http://localhost:9000/examples/advanced.html)


### Testing

    grunt test:unit - runs javascript test suite with Chrome
    grunt test:e2e - runs end to end tests with Webdriver + Chrome
    grunt test:coverage - run tests measuring coverage with Chrome

Tests are run by [Karma](http://karma-runner.github.io/) and [Protractor](https://github.com/angular/protractor) using [Jasmine](http://jasmine.github.io/). Check out `Gruntfile.coffee` and `config/grunt/` for more testing options.

## License

BSD 3-clause
