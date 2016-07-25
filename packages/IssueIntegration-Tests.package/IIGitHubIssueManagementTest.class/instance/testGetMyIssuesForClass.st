running
testGetMyIssuesForClass
	| issues |
	self assert: (self issueManagement getMyIssuesForClass: 'Collection') isEmpty.
	
	issues := self issueManagement getIssuesForClass: 'Collection'.
	self assert: 1 equals: issues size.
	self issueManagement editIssue: issues first assignee: 'test-user'.
	
	self assert: 1 equals: (self issueManagement getMyIssuesForClass: 'Collection') size.