instance variables
testWebClient
	| webClient |
	webClient := IIMockWebClient new.
	self issueManagement webClient: webClient.
	self assert: self issueManagement webClient equals: webClient
	