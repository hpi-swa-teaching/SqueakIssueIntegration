issue accessing
getIssuesForMethod: aMethod class: aClass andIsMeta: aBoolean
	^ self getIssues select: [ :issue | 
		issue title includesSubString: (self createIndicatorFor: aClass 
			method: aMethod 
			andIsMeta: aBoolean) ]