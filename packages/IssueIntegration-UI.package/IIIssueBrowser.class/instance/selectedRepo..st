accessing
selectedRepo: anIssueManagement
	selectedRepo := anIssueManagement.
	self changed: #selectedRepo.
	self changed: #issueList.
	self changed: #labelList