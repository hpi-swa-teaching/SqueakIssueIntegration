user interface signals
closeIssue
	self selectedRepo closeIssue: self selectedIssue.
	self changed: #issueList