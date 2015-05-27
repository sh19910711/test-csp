# check result
xhr "GET", "http://localhost:18080/some/api", (xhrObj)->
  document.write "xhr: #{xhrObj.response}"
  res = JSON.parse(xhrObj.response)
  console.assert res.result == "OK"

