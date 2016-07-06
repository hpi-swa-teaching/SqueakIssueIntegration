user interface signals
assignee: aText
	assignee := aText.
	selectedIssue := (IIIssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue assignee: assignee.
	self changed: #assignee