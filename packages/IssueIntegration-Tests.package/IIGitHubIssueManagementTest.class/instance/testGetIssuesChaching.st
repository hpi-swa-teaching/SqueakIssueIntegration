running
testGetIssuesChaching
	| newIssue issues serverIssues issueIDs serverIssueIDs |
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issueIDs := (issues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := serverIssues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs.
	
	newIssue := self gitHubApiMock createIssueJsonWithTitle: 'New Issue' body: 'Found new Issue' andAssignee: ''.
	self issueManagement invalidateCache.
	
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issueIDs := (issues collect: [ :issue | issue number ]) sorted.
	serverIssueIDs := serverIssues collect: [ :json | json number ].
	self assert: serverIssueIDs equals: issueIDs