as yet unclassified
getIssueManagement
	^ IssueManagement getIssueManagementFor: (self repoPackageDictionary 
		at: selectedRepo 
		ifAbsent: [^ EmptyIssueManagement getInstance])