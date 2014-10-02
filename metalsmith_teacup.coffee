module.exports = ({directory}={}) ->
  directory ?= 'templates'
  {render} = require 'teacup'
  extend = require 'extend'

  (files, metalsmith, done) ->
    metadata = metalsmith.metadata()

    for filename, file of files
      continue unless file.template
      templateFilename = metalsmith.path directory, file.template+'.coffee'
      templateData = extend({}, file, metadata)
      rendered = render require(templateFilename), templateData
      file.contents = new Buffer rendered
    done()
