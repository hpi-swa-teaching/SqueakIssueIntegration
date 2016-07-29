issue accessing
getMyIssuesForMethod: methodName class: aClass andIsMeta: aBoolean
	^ (self getIssuesForMethod: methodName class: aClass andIsMeta: aBoolean) 
select: [ :issue | self username = issue assignee ]