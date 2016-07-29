issue accessing
getMyIssuesForClass: aClass andPackage: package
	^ (self getIssueManagementFor: package) getMyIssuesForClass: aClass