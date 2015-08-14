# kahoot-quill

This repo is a fork of [Quill](https://github.com/quilljs/quill), a modern rich text editor built for compatibility and extensibility. It was created by [Jason Chen](https://twitter.com/jhchen) and [Byron Milligan](https://twitter.com/byronmilligan) and open sourced by [Salesforce.com](http://www.salesforce.com).

To get started with Quill, check out the [Github Page](http://quilljs.com/) or jump straight into the [demo](http://quilljs.com/examples/).

Please see the official [Quill README](https://github.com/quilljs/quill/blob/develop/README.md) for more information about the base project and its development.

## Release process

kahoot-quill is pulled into mobitroll-kahoot through the GitHub registry via jspm (see LINK). This uses GitHub release objects. In order to update the kahoot-quill code pulled into mobitroll-kahoot, therefore, we need to do a new GitHub release.

### 1. Merge stage to master

Create a PR from stage to master and review the changes with someone else. When you are satisfied that the changes are ready to go into production, merge the PR.

### 2. Run release script

Do this on your local machine, from the base kahoot-quill directory. The script requires perl. Make sure you've committed/stashed any work before running the script.

```
./release.sh a.b.c
```
where `a.b.c` is the target semver release number, e.g. `0.20.2`.

The script will abort if certain conditions are not met: for example, if your working directory is not clean when you run the script, or if there are no changes to the dist files after compiling. Make sure it has exited successfully before continuing.

### 3. Create GitHub release

Go to the kahoot-quill GitHub releases page at https://github.com/mobitroll/kahoot-quill/releases. 
Click **Draft a new release** and select the tag corresponding to the target release number.


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
