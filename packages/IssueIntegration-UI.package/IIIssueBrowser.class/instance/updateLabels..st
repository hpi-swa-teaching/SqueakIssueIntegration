user interface signals
updateLabels: labels
	((IIIssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue labels: labels)
		
