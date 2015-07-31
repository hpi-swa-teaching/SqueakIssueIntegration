issue accessing
getIssuesForMethod: method class: aClass isMeta: aBoolean package: package
	
	^  (self getIssueManagementFor: package) getIssuesForMethod: method class: aClass isMeta: aBoolean