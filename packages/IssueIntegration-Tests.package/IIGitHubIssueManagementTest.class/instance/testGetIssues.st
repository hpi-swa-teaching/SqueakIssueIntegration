running
testGetIssues
	| issueIDs serverIssueIDs newIssue |
	issueIDs := (self issueManagement getIssues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs.
	
	newIssue := self issueManagement createIssueWithTitle: 'New Issue' body: 'Test new issue' assignee: '' andLabels: OrderedCollection new.

	issueIDs := (self issueManagement getIssues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs.
	self assert: (issueIDs contains: [ :id | id = newIssue number ])