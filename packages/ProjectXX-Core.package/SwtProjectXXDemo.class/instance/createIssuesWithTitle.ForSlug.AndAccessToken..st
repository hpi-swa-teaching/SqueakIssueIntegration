accessing
createIssuesWithTitle: title ForSlug: aSlug AndAccessToken: anAccessToken
| json response |
	json := (JsonObject new at: 'title' put: title; yourself).
	response := WebClient httpPost:'https://api.github.com/repos/', aSlug, '/issues?access_token=', anAccessToken content:json asJsonString type:'text/html'.
	^ (response status = 'HTTP/1.1 201 Created').
	