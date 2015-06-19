console.log "this is panel"
console.log request.toString()
chrome.tabs.executeScript chrome.inspectedWindow.tabId, code: "var request = #{request.toString()}", (res)->
  console.log "after eval"

# evalCode = [
#   "request('POST', 'http://localhost:18080/some/api', function(xhr) {"
#   "  console.log('xhr = ', xhr.response);"
#   "});"
# ].join("")
# chrome.devtools.inspectedWindow.eval evalCode
