issue accessing
getMyIssuesForMethod: aMethod class: aClass isMeta: aBoolean andPackage: aPackage
	^ (self getIssueManagementFor: aPackage) getMyIssuesForMethod: aMethod 
		class: aClass 
		andIsMeta: aBoolean