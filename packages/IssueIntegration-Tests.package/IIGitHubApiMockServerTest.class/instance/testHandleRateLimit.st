as yet unclassified
testHandleRateLimit
	| response |
	response := self requestForMethod: #handleRateLimit: andPath: '/rate_limit' requestBlock: [ :req | ].
	self assert: (response includesSubString: 'limit'). 