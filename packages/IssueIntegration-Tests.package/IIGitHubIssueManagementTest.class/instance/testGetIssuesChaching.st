running
testGetIssuesChaching
	| newIssue issueIDs serverIssueIDs |
	issueIDs := (self issueManagement getIssues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs.
	
	newIssue := self gitHubApiMock createIssueJsonWithTitle: 'New Issue' body: 'Found new Issue' andAssignee: ''.
	self issueManagement invalidateCache.
	
	issueIDs := (self issueManagement getIssues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := self gitHubApiMock issues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs.
	self assert: (issueIDs contains: [ :id | id = newIssue number ])