issue management
deleteIssueManagementFor: aPackage
	self repositoryDictionary removeKey: aPackage ifAbsent: [ ]