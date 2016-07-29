running
testOAuthToken
	| oAuthToken |
	oAuthToken := IIGitHubApiMockServer oAuthToken.
	self apiClient oAuthToken: oAuthToken.
	self assert: oAuthToken equals: self apiClient oAuthToken