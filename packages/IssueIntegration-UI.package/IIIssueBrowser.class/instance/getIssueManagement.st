as yet unclassified
getIssueManagement
	^ IIIssueManagement getIssueManagementFor: (self repoPackageDictionary 
		at: selectedRepo 
		ifAbsent: [ ^ IIEmptyIssueManagement getInstance ])