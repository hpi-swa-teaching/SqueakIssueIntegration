issue accessing
getMyIssuesForMethod: method InClass: aClass InPackage: package
	
	^ (self getIssueManagementFor: package) getMyIssuesForMethod: method InClass: aClass