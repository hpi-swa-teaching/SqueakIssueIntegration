initialize
requestWithUrl: urlString
	^ super requestWithUrl: (self gitHubUrlToLocalhost: urlString)