running
testNotAValidOAuthToken
	| response request |
	response := '' writeStream.
	request := WebRequest new stream: response; yourself.
	self apiServer notAValidOAuthToken: request.
	self assert: (response contents includesSubString: 'Bad credentials')