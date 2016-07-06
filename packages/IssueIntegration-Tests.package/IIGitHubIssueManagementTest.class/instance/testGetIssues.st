running
testGetIssues
	| issues serverIssues issuesIDs serverIssuesIDs |
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issuesIDs := issues collect: [ :issue | issue number ].
	serverIssuesIDs := (serverIssues collect: [ :json | json at: 'number' ]) asSet.
	self assert: serverIssuesIDs equals: issuesIDs.
	
	self issueManagement createIssueWithTitle: 'New Issue' body: 'Test new issue' assignee: ''. 
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issuesIDs := issues collect: [ :issue | issue number ].
	serverIssuesIDs := (serverIssues collect: [ :json | json at: 'number' ]) asSet.
	self assert: serverIssuesIDs equals: issuesIDs