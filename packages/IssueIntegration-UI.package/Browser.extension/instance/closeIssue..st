*IssueIntegration-UI-message list menu
closeIssue: anIssue
	(IIIssueManagement getIssueManagementFor: selectedSystemCategory) closeIssue: anIssue
	