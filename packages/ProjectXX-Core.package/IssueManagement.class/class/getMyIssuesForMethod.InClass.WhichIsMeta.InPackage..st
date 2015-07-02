issue accessing
getMyIssuesForMethod: method InClass: aClass WhichIsMeta: aBoolean InPackage: package
	
	^ (self getIssueManagementFor: package) getMyIssuesForMethod: method InClass: aClass WhichIsMeta: aBoolean