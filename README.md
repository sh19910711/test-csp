## Usage

1. Run web server
  - `$ bundle exec rackup --host localhost --port 18080`
2. Build browser extensions you need
3. Access to app from browser extensions
4. Check with your eyes

## URL

* `/some/api`
  - it returns simple json text like `{"result"=>"OK"}`
* `/some/api/with/custom/header`
  - it returns simple json text and custom header (`X-Hello`)

## crx-test-xhr

1. `$ npm install`
2. `$ gulp build`
  - Compiled files are generated into `dist/` directory
3. Install the extension by hand

## Tasks

* script-src
  - [ ] chrome
  - [ ] firefox
  - [ ] safari
* [ ] Test XHR from browser extensions
  - [x] chrome
  - [ ] firefox
  - [ ] safari

