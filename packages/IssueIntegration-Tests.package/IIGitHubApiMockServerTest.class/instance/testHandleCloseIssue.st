running
testHandleCloseIssue
	self assert: 3 equals: self apiServer issues size.
	self requestForMethod: #handleCloseIssue: 
		withPath: '/issues/1' 
		andContent: '{"state":"closed"}'.
	self assert: 2 equals: (self apiServer issues count: [ :issue | issue state = 'open' ]).