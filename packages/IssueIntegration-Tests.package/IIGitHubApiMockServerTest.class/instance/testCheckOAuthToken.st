running
testCheckOAuthToken
	| request |
	request := WebRequest new 
		headerAt: 'Authorization' put: 'token ', IIGitHubApiMockServer oAuthToken;
		yourself.
	self assert: (self apiServer checkOAuthToken: request).
	request := WebRequest new headerAt: 'Authorization' put: 'token invalid-token'; yourself.
	self assert: false equals: (self apiServer checkOAuthToken: request).
	request := WebRequest new headerAt: 'Authorization' put: 'invalid-token'; yourself.
	self assert: false equals: (self apiServer checkOAuthToken: request).
	request := WebRequest new.
	self assert: false equals: (self apiServer checkOAuthToken: request)