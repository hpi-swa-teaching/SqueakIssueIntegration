running
testHandleIssueCreation
	| response issue |
	response := self requestForMethod: #handleIssueCreation: andPath: '/issues' requestBlock: [ :req | req content: '{"title":"a-title", "body":"a-body","assignee":"an-assignee"}'].
	self assert: 4 equals: ((Json readFrom: (ReadStream on: response)) at: 'number'). 
	issue := self apiServer issues detect: [ :each | (each at: 'number') = 4 ].
	self assert: 'a-title' equals: (issue at: 'title').
	self assert: 'a-body' equals: (issue at: 'body').
	self assert: 'an-assignee' equals: ((issue at: 'assignee') at: 'login').