testing
gitHubUrlToLocalhost: aString
	^ aString copyReplaceAll: 'https://api.github.com' with: 'http://localhost:' , GitHubApiServer portNumber.