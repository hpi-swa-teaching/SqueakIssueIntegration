issue accessing
getMyIssuesForClass: aClass
	^ (self getIssuesForClass: aClass) select: [ :issue | self username = issue assignee ]