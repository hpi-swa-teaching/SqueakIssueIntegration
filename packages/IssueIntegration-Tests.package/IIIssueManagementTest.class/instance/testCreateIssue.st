running
testCreateIssue
	self should: [self issueManagement createIssueWithTitle: 'Test test' body: 'Test body' assignee: '' andLabels: '' ] raise: SubclassResponsibility