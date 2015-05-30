self = require("sdk/self")

dummy = (text, callback)->
  callback(text)

console.log "define sendXHR()"
sendXHR = ->
  console.log "xhr"
  xhr = require("./xhr")
  xhr "GET", "http://localhost:18080/some/api", (xhrObject)->
    console.dir xhrObject
    button.badgeColor = "rgba(255, 0, 0, 1)"

buttons = require("sdk/ui/button/action")

console.log "create button"
button = buttons.ActionButton
  id: "hello-firefox-button"
  label: "Hello Firefox"
  icon:
    "16": "./img/redo-16.png"
    "32": "./img/redo-32.png"
    "64": "./img/redo-64.png"
  onClick: sendXHR
  badge: 0
  badgeColor: "rgba(153, 153, 153, 1)"

module.exports = dummy

