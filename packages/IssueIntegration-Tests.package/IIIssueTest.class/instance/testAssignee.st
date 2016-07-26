running
testAssignee
	| issue |
	issue := IIIssue new.
	issue assignee: 'testuser'.
	self assert: issue assignee equals: 'testuser'