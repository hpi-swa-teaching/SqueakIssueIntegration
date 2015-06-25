issue accessing
getMyIssuesForMethod: methodName InMetaClass: aClass
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssuesForMethod: methodName InMetaClass: aClass.
	issues do: [ :issue | (issue assignee = self username) ifTrue: [myIssuesForMethod add: issue] ].

	^ myIssuesForMethod