user interface signals
assignee: aText
	assignee := aText.
	(IssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue assignee: assignee.
	self changed: #assignee