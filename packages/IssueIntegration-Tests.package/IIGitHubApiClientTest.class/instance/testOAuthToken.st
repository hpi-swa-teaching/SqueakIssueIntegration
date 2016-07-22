as yet unclassified
testOAuthToken
	| oAuthToken |
	oAuthToken := 'i-am-not-a-key'.
	self apiClient oAuthToken: oAuthToken.
	self assert: self apiClient oAuthToken equals: oAuthToken