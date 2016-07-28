issue accessing
getMyIssuesForClass: className
	^ (self getIssuesForClass: className) select: [ :issue | self username = issue assignee ]