as yet unclassified
requestWithUrl: urlString
	^ super requestWithUrl: 
		(urlString copyReplaceAll: 'https://api.github.com' with: 'http://localhost').