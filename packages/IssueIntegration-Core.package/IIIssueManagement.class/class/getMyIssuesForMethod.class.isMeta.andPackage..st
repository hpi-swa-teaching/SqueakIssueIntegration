issue accessing
getMyIssuesForMethod: method class: aClass isMeta: aBoolean andPackage: package
	^ (self getIssueManagementFor: package) getMyIssuesForMethod: method class: aClass andIsMeta: aBoolean