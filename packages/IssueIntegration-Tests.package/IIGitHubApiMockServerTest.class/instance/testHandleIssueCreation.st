running
testHandleIssueCreation
	| response issue |
	response := self requestForMethod: #handleIssueCreation: 
		withPath: '/issues' 
		andContent: '{"title":"a-title","body":"a-body","assignee":"an-assignee"}'.
	self assert: 4 equals: (Json readFrom: response readStream) number. 
	issue := self apiServer issues detect: [ :each | each number = 4 ].
	self 
		assert: 'a-title' equals: issue title;
		assert: 'a-body' equals: issue body;
		assert: 'an-assignee' equals: issue assignee login