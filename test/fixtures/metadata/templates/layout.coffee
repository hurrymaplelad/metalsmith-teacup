{html, body, text, head, title} = require 'teacup'

module.exports = ({site, contents}) ->
  html ->
    head ->
      title site.name
    body ->
      text contents
