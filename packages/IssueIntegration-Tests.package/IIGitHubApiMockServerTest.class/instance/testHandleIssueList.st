running
testHandleIssueList
	| response |
	response := self requestForMethod: #handleIssueList: andPath: '/issues'.
	self assert: 3 equals: (Json readFrom: (ReadStream on: response)) size. 