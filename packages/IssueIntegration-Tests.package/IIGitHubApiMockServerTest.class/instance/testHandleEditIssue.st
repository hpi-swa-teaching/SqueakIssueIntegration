running
testHandleEditIssue
	| response issue json |
	response := self requestForMethod: #handleEditIssue: andPath: '/issues/1' requestBlock: [ :req | req content: '{"title":"new-title", "body":"new-body","assignee":"new-assignee"}' ].

	json := Json readFrom: (ReadStream on: response).
	self assert: 'new-title' equals: (json at: 'title').
	self assert: 'new-body' equals: (json at: 'body').
	self assert: 'new-assignee' equals: ((json at: 'assignee') at: 'login'). 
	
	issue := self apiServer issues detect: [ :each | (each at: 'number') = 1 ].
	self assert: 'new-title' equals: (issue at: 'title').
	self assert: 'new-body' equals: (issue at: 'body').
	self assert: 'new-assignee' equals: ((issue at: 'assignee') at: 'login').