initialize
initializeFromUrl: urlString
	^ super initializeFromUrl: (self gitHubUrlToLocalhost: urlString)