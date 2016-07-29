issue accessing
getMyIssuesForMethod: aMethod class: aClass andIsMeta: aBoolean
	^ (self getIssuesForMethod: aMethod class: aClass andIsMeta: aBoolean) 
		select: [ :issue | self username = issue assignee ]