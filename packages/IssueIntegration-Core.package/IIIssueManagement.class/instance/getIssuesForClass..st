issue accessing
getIssuesForClass: aClass
	^ self getIssues select: [ :issue | issue title includesSubString: 
		(self createIndicatorFor: aClass) ]