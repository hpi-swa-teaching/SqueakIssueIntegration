running
testIssueCreation
	| issue |
	issue := self issueManagement createIssueWithTitle: 'Test From Test' body: 'Test Body' assignee: '' andLabels: OrderedCollection new.
	self assert: issue title equals: 'Test From Test'.
	self assert: issue body equals: 'Test Body'