issue accessing
getMyIssuesForMethod: method class: aClass isMeta: aBoolean package: package
	
	^ (self getIssueManagementFor: package) getMyIssuesForMethod: method class: aClass isMeta: aBoolean