issue accessing
getIssuesForClass: aClass andPackage: aPackage
	^ (self getIssueManagementFor: aPackage) getIssuesForClass: aClass