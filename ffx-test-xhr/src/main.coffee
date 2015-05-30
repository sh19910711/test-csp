self = require("sdk/self")

dummy = (text, callback)->
  callback(text)

buttons = require("sdk/ui/button/action")
tabs = require("sdk/tabs")

button = buttons.ActionButton
  id: "hello-firefox-button"
  label: "Hello Firefox"
  icon:
    "16": "./img/redo-16.png"
    "32": "./img/redo-32.png"
    "64": "./img/redo-64.png"
  onClick: ->
    tabs.open "http://google.com"

exports =
  dummy: dummy

