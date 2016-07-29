issue management
getIssueManagementFor: aPackage
	^ self repositoryDictionary at: aPackage ifAbsent: [ IIEmptyIssueManagement getInstance ]