issue management
getIssueManagementFor: aPackageString
	^ self repositoryDictionary 
		at: aPackageString 
		ifAbsent: IIEmptyIssueManagement getInstance