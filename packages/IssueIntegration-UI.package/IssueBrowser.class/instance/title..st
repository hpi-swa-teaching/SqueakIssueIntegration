user interface signals
title: aText
	title := aText.
	(IssueManagement getIssueManagementFor: (self repoPackageDictionary at: self selectedRepo)) editIssue: self selectedIssue title: title.
	self changed: #title