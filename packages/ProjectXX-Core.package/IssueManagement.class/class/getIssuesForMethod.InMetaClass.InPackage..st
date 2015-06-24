as yet unclassified
getIssuesForMethod: method InMetaClass: aClass InPackage: package
	
	^ (self getIssueManagementFor: package) getIssuesForMethod: method InMetaClass: aClass