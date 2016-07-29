running
testHandleEditIssue
	| response issue json |
	response := self requestForMethod: #handleEditIssue: 
		withPath: '/issues/1' 
		andContent: '{"title":"new-title", "body":"new-body", "assignee":"new-assignee"}'.

	json := Json readFrom: (ReadStream on: response).
	self assert: 'new-title' equals: json title.
	self assert: 'new-body' equals: json body.
	self assert: 'new-assignee' equals: json assignee login. 
	
	issue := self apiServer issues detect: [ :each | each number = 1 ].
	self assert: 'new-title' equals: issue title.
	self assert: 'new-body' equals: issue body.
	self assert: 'new-assignee' equals: issue assignee login.