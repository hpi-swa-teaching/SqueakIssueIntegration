external
testEditTitle
	| issue |
	issue := IIIssue new.
	self should: [self issueManagement editIssue: issue assignee: 'Title'] raise: SubclassResponsibility