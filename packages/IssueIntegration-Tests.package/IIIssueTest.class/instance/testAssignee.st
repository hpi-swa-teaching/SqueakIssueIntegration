running
testAssignee
	| issue |
	issue := IIIssue new
		assignee: 'testuser';
		yourself.
	self assert: 'testuser' equals: issue assignee