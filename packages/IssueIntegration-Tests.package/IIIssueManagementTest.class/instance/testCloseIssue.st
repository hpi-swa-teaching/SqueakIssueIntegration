running
testCloseIssue
	self should: [ self issueManagement closeIssue: IIIssue new ] raise: SubclassResponsibility