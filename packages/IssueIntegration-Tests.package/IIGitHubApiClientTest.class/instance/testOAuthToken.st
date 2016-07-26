running
testOAuthToken
	| oAuthToken |
	oAuthToken := IIGitHubApiMockServer oAuthToken.
	self apiClient oAuthToken: oAuthToken.
	self assert: self apiClient oAuthToken equals: oAuthToken