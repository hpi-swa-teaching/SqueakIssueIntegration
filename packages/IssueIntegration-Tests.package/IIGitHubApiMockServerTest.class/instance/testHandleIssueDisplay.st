running
testHandleIssueDisplay
	| response |
	response := self requestForMethod: #handleIssueDisplay: andPath: '/issues/1'.
	self assert: 1 equals: (Json readFrom: response readStream) number 