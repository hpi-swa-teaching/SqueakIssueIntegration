external
testCloseIssue
	| issue |
	issue := IIIssue new. 
	self should: [self issueManagement closeIssue: issue ] raise: SubclassResponsibility