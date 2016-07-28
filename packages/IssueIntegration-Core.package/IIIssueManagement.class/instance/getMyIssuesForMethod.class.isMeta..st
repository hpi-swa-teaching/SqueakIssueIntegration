issue accessing
getMyIssuesForMethod: methodName class: aClass isMeta: aBoolean
	^ (self getIssuesForMethod: methodName class: aClass isMeta: aBoolean) 
		select: [ :issue | self username = issue assignee ]