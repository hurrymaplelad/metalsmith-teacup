{html, body, text} = require 'teacup'

module.exports = ({contents}) ->
  html ->
    body ->
      text contents
