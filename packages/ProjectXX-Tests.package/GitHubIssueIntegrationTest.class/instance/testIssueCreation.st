running
testIssueCreation
	| issue |
	
	issue := issueManagement createIssueWithTitle: 'Test From Test' AndBody: 'Test Body'.
	self assert: issue title equals: 'Test From Test'.
	self assert: issue body equals: 'Test Body'