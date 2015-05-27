# check result
xhr "GET", "http://localhost:18080/some/api", (xhrObj)->
  console.log(xhrObj)
