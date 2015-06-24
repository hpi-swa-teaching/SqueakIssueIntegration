as yet unclassified
getMyIssuesForMethod: method InMetaClass: aClass InPackage: package
	
	^ (self getIssueManagementFor: package) getMyIssuesForMethod: method InMetaClass: aClass