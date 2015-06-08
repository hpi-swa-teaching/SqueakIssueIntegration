as yet unclassified
deleteIssueManagementFor: aPackageString

	self repositoryDictionary removeKey: aPackageString ifAbsent:[''].