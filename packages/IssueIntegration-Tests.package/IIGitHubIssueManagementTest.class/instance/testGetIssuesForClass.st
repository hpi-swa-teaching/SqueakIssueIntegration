running
testGetIssuesForClass
	| issues |
	issues := self issueManagement getIssuesForClass: 'Collection'.
	self assert: 1 equals: issues size.
	self assert: 'Test From Test [Collection]' equals: issues first title.