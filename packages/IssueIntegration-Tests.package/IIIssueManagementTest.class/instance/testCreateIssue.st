external
testCreateIssue
	self should: [self issueManagement createIssueWithTitle: 'Test test' body: 'Test body' assignee: '' labels: '' ] raise: SubclassResponsibility