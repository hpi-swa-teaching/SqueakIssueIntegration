external
testEditBody
	| issue |
	issue := IIIssue new.
	self should: [self issueManagement editIssue: issue body: 'Body'] raise: SubclassResponsibility