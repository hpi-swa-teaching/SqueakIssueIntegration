user interface signals
closeIssue
	self getIssueManagement closeIssue: self selectedIssue.
	self changed: #getIssues