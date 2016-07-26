running
testHandleIssueList
	| response |
	response := self requestForMethod: #handleIssueList: andPath: '/issues' requestBlock: [ :req | ].
	self assert: 3 equals: ((Json readFrom: (ReadStream on: response))) size. 