issue accessing
getIssuesForMethod: method InClass: aClass WhichIsMeta: aBoolean InPackage: package
	
	^ (self getIssueManagementFor: package) getIssuesForMethod: method InClass: aClass WhichIsMeta: aBoolean