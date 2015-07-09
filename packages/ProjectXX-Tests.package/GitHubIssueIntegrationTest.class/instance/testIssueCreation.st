running
testIssueCreation
	| issue |
	
	issue := issueManagement createIssueWithTitle: 'Test From Test' body: 'Test Body' assignee: ''.
	self assert: issue title equals: 'Test From Test'.
	self assert: issue body equals: 'Test Body'