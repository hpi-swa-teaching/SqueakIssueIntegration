issue management
deleteIssueManagementFor: aPackageString

	self repositoryDictionary removeKey: aPackageString ifAbsent:[''].