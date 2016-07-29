running
testHandleIssueDisplay
	| response |
	response := self requestForMethod: #handleIssueDisplay: andPath: '/issues/1' requestBlock: [ :req | ].
	self assert: 1 equals: (Json readFrom: (ReadStream on: response)) number. 