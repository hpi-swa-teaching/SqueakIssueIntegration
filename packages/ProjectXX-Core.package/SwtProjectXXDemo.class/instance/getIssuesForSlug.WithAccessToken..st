accessing
getIssuesForSlug: aSlug WithAccessToken: anAccessToken
"	^ (Json readFrom: (WebClient httpGet:'https://api.github.com/repos/', aSlug, '/issues?access_token=', anAccessToken) contentStream)."

	^ (WebClient httpGet:'https://api.github.com/repos/', aSlug, '/issues?access_token=', anAccessToken) content.