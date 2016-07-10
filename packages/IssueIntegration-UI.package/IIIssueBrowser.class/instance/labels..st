user interface signals
labels: aText
	labels := aText.
	selectedIssue := (IIIssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue labels: labels.
	self changed: #labels