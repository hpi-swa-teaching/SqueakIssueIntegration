issue accessing
getIssuesForClass: aClass isMeta: aBoolean package: package
	^ (self getIssueManagementFor: package) getIssuesForClass: aClass isMeta: aBoolean