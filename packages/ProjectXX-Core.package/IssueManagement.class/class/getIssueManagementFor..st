as yet unclassified
getIssueManagementFor: aPackageString

	^ self repositoryDictionary at: aPackageString ifAbsent: ''