running
testGetIssuesChaching
	| newIssue issues serverIssues issueIDs serverIssueIDs |
	newIssue := self gitHubApiServer createIssueJsonWithTitle: 'New Issue' body: 'Found new Issue' andAssignee: ''.
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiServer issues.
	issueIDs := issues collect: [ :issue | issue number].
	serverIssueIDs := (serverIssues collect: [ :json | json at: 'number'] )asSet.
	issueIDs add: (newIssue at: 'number').
	self assert: serverIssueIDs equals: issueIDs.
	
	self issueManagement invalidateCache.
	
	issues := self issueManagement getIssues.
	serverIssues := self gitHubApiServer issues.
	issueIDs := issues collect: [ :issue | issue number].
	serverIssueIDs := (serverIssues collect: [ :json | json at: 'number'] )asSet.
	self assert: serverIssueIDs equals: issueIDs