accessing
selectedRepo: anIssueManagement
	selectedRepo := anIssueManagement.
	self 
		changed: #selectedRepo;
		changed: #issueList;
		changed: #labelList