as yet unclassified
getIssuesForMethod: method InClass: aClass InPackage: package
	
	^ (self getIssueManagementFor: package) getIssuesForMethod: method InClass: aClass