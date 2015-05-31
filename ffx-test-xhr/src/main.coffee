self = require("sdk/self")

dummy = (text, callback)->
  callback(text)

sendRequestFunc = (method, buttonType)->
  ->
    request = require("./request")
    button = myButton[buttonType]
    request method, "http://localhost:18080/some/api", (xhr)->
      if xhr.status == 200
        button.badge = 1
        button.badgeColor = "rgba(0, 0, 255, 1)"
      else
        button.badge = -1
        button.badgeColor = "rgba(255, 0, 0, 1)"

buttons = require("sdk/ui/button/action")

myButton = {}

myButton.get = buttons.ActionButton
  id: "hello-firefox-button-get"
  label: "Hello Firefox (GET)"
  icon:
    "16": "./img/redo-16.png"
    "32": "./img/redo-32.png"
    "64": "./img/redo-64.png"
  onClick: sendRequestFunc("GET", "get")
  badge: 0
  badgeColor: "rgba(153, 153, 153, 1)"

myButton.post = buttons.ActionButton
  id: "hello-firefox-button-post"
  label: "Hello Firefox (POST)"
  icon:
    "16": "./img/redo-16.png"
    "32": "./img/redo-32.png"
    "64": "./img/redo-64.png"
  onClick: sendRequestFunc("POST", "post")
  badge: 0
  badgeColor: "rgba(153, 153, 153, 1)"

module.exports = dummy

