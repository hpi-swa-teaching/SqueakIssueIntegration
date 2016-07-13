running
testIssueCreation
	| issue |
	issue := issueManagement createIssueWithTitle: 'Test From Test' body: 'Test Body' assignee: '' labels: OrderedCollection new.
	self assert: issue title equals: 'Test From Test'.
	self assert: issue body equals: 'Test Body'