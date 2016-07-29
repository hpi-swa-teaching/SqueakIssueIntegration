running
testHandleRateLimit
	| response |
	response := self requestForMethod: #handleRateLimit: andPath: '/rate_limit'.
	self assert: (response includesSubString: 'limit')