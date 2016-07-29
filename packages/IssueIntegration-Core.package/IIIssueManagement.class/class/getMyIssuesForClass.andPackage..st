issue accessing
getMyIssuesForClass: aClass andPackage: aPackage
	^ (self getIssueManagementFor: aPackage) getMyIssuesForClass: aClass