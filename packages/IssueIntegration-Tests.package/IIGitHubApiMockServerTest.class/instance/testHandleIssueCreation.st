running
testHandleIssueCreation
	| response issue |
	response := self requestForMethod: #handleIssueCreation: andPath: '/issues' requestBlock: [ :req | req content: '{"title":"a-title", "body":"a-body","assignee":"an-assignee"}'].
	self assert: 4 equals: ((Json readFrom: (ReadStream on: response)) number). 
	issue := self apiServer issues detect: [ :each | each number = 4 ].
	self assert: 'a-title' equals: issue title.
	self assert: 'a-body' equals: issue body.
	self assert: 'an-assignee' equals: issue assignee login.