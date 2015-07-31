test instance variables
testAssignee
	| issue |

	issue := Issue new.
	issue assignee: 'testuser'.

	self assert: issue assignee equals: 'testuser'