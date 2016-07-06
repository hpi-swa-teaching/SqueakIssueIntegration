user interface signals
body: aText
	body := aText.
	selectedIssue := (IssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue body: body.
	self changed: #body