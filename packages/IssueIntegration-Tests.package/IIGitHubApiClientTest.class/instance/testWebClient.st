running
testWebClient
	| webClient |
	webClient := WebClient new.
	self apiClient webClient: webClient.
	self assert: webClient equals: self apiClient webClient