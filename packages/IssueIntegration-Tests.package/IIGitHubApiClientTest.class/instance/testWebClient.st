as yet unclassified
testWebClient
	| webClient |
	webClient := WebClient new.
	self apiClient webClient: webClient.
	self assert: self apiClient webClient equals: webClient