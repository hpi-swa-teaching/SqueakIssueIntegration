external
testEditIssue
	| issue |
	issue := IIIssue new.
	self should: [self issueManagement editIssue: issue title: 'Title' body: 'Body' assignee: 'Title' state: 'open'] raise: SubclassResponsibility