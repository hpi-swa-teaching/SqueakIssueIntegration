issue accessing
getIssuesForMethod: aMethod class: aClass isMeta: aBoolean andPackage: aPackage
	^ (self getIssueManagementFor: aPackage) getIssuesForMethod: aMethod 
		class: aClass 
		andIsMeta: aBoolean