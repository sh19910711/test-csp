# check result
request "GET", "http://localhost:18080/some/api", (xhr)->
  text = document.createElement("div")
  text.innerText = "XHR (GET): #{xhr.response}\n"
  document.body.appendChild text
  res = JSON.parse(xhr.response)
  console.assert res.result == "OK"

request "POST", "http://localhost:18080/some/api", (xhr)->
  text = document.createElement("div")
  text.innerText = "XHR (POST): #{xhr.response}\n"
  document.body.appendChild text
  res = JSON.parse(xhr.response)
  console.assert res.result == "OK"

