running
testGetIssueWithNumber
	| issue |	

	issue := issueManagement getIssueWithNumber: 1.
	self assert: issue number equals: 1.
	