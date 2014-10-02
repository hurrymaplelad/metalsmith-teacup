module.exports = ({directory}={}) ->
  directory ?= 'templates'
  {render} = require 'teacup'

  (files, metalsmith, done) ->
    for filename, file of files
      continue unless file.template
      templateFilename = metalsmith.path directory, file.template+'.coffee'
      rendered = render require(templateFilename), file
      file.contents = new Buffer rendered
    done()
