as yet unclassified
testNotAValidOAuthToken
	| response request |
	response := (WriteStream on: '').
	request := WebRequest new stream: response.
	self apiServer notAValidOAuthToken: request.
	self assert: (response contents includesSubString: 'Bad credentials')