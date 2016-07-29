issue accessing
getIssuesForMethod: method class: aClass isMeta: aBoolean andPackage: package
	^ (self getIssueManagementFor: package) getIssuesForMethod: method class: aClass andIsMeta: aBoolean