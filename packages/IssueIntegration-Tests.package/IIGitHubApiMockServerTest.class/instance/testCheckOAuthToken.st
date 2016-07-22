as yet unclassified
testCheckOAuthToken
	| request |
	request := WebRequest new headerAt: 'Authorization' put: 'token ', IIGitHubApiMockServer oAuthToken.
	self assert: (self apiServer checkOAuthToken: request).
	request := WebRequest new headerAt: 'Authorization' put: 'token invalid-token'.
	self assert: false equals: (self apiServer checkOAuthToken: request).
	request := WebRequest new headerAt: 'Authorization' put: 'invalid-token'.
	self assert: false equals: (self apiServer checkOAuthToken: request).
	request := WebRequest new.
	self assert: false equals: (self apiServer checkOAuthToken: request).