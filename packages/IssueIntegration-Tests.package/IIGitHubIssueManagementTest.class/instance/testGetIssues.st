running
testGetIssues
	| issueIDs serverIssueIDs newIssue |
	issueIDs := self issueManagement getIssues collect: [ :issue | issue number ].
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json at: 'number' ].
	self assert: serverIssueIDs equals: issueIDs.
	
	newIssue := self issueManagement createIssueWithTitle: 'New Issue' body: 'Test new issue' assignee: ''.

	issueIDs := self issueManagement getIssues collect: [ :issue | issue number ].
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json at: 'number' ].
	self assert: serverIssueIDs equals: issueIDs.
	self assert: (issueIDs contains: [:id | id = newIssue number]).