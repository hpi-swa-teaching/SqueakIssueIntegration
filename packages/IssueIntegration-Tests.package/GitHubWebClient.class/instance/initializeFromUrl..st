as yet unclassified
initializeFromUrl: urlString
	^ super initializeFromUrl: 
		(urlString copyReplaceAll: 'https://api.github.com' with: 'http://localhost').