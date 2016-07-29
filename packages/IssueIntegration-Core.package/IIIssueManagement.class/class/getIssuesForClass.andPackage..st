issue accessing
getIssuesForClass: aClass andPackage: package
	^ (self getIssueManagementFor: package) getIssuesForClass: aClass