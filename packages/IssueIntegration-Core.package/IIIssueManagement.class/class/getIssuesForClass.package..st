issue accessing
getIssuesForClass: aClass package: package
	
	^ (self getIssueManagementFor: package) getIssuesForClass: aClass