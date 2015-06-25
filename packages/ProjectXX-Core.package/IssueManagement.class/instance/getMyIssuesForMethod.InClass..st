issue accessing
getMyIssuesForMethod: methodName InClass: aClass
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssuesForMethod: methodName InClass: aClass.
	issues do: [ :issue | (issue assignee = self username) ifTrue: [myIssuesForMethod add: issue] ].
	
	^ myIssuesForMethod