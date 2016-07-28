running
testEditIssue
	| issue |
	issue := IIIssue new.
	self should: [self issueManagement editIssue: issue title: 'Title'] raise: SubclassResponsibility.
	self should: [self issueManagement editIssue: issue body: 'Body'] raise: SubclassResponsibility.
	self should: [self issueManagement editIssue: issue assignee: 'me'] raise: SubclassResponsibility.
	self should: [self issueManagement editIssue: issue labels: 'Label1'] raise: SubclassResponsibility