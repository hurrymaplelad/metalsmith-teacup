teacup = require '..'
equal = require 'assert-dir-equal'
Metalsmith = require 'metalsmith'

describe 'metalsmith-teacup', ->
  it 'should render a basic template', (done) ->
    Metalsmith('test/fixtures/basic')
      .use teacup()
      .build (err) ->
        return done(err) if err
        equal 'test/fixtures/basic/build', 'test/fixtures/basic/expected'
        done()

  it 'should pass metadata into the template', (done) ->
    Metalsmith('test/fixtures/metadata')
      .use teacup()
      .metadata
        site: name: 'Teacup'
      .build (err) ->
        return done(err) if err
        equal 'test/fixtures/metadata/build', 'test/fixtures/metadata/expected'
        done()
