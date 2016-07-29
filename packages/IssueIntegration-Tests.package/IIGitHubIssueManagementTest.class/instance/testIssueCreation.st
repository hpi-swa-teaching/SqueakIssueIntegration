running
testIssueCreation
	| issue |
	issue := self issueManagement createIssueWithTitle: 'Test From Test' 
		body: 'Test Body'
		assignee: ''
		andLabels: {}.
	self 
		assert: issue title equals: 'Test From Test';
		assert: issue body equals: 'Test Body'