teacup = require '..'
equal = require 'assert-dir-equal'
Metalsmith = require 'metalsmith'

describe 'metalsmith-teacup', ->
  it 'should render a basic template', (done) ->
    Metalsmith('test/fixtures/basic')
      .use teacup()
      .build (err) ->
        return done(err) if err
        equal 'test/fixtures/basic/expected', 'test/fixtures/basic/build'
        done()
