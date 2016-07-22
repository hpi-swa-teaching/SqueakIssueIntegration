issue accessing
getMyIssuesForClass: aClass package: package
	^ (self getIssueManagementFor: package) getMyIssuesForClass: aClass