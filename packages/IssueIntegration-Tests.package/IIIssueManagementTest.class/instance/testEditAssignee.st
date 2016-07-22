external
testEditAssignee
	| issue |
	issue := IIIssue new.
	self should: [self issueManagement editIssue: issue assignee: 'me'] raise: SubclassResponsibility