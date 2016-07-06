running
testGetIssues
	| issuesBefore issuesAfter serverIssues issuesIDs serverIssuesIDs |
	issuesBefore := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issuesIDs := issuesBefore collect: [ :issue | issue number ].
	serverIssuesIDs := (serverIssues collect: [ :json | json at: 'number' ]) asSet.
	self assert: serverIssuesIDs equals: issuesIDs.
	
	self issueManagement createIssueWithTitle: 'New Issue' body: 'Test new issue' assignee: ''. 
	issuesAfter := self issueManagement getIssues.
	serverIssues := self gitHubApiMock issues.
	issuesIDs := issuesAfter collect: [ :issue | issue number ].
	serverIssuesIDs := (serverIssues collect: [ :json | json at: 'number' ]) asSet.
	self assert: serverIssuesIDs equals: issuesIDs.
	"self assert: (issuesBefore size + 1) equals: issuesAfter size"