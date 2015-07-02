issue accessing
getMyIssuesForMethod: methodName InClass: aClass WhichIsMeta: aBoolean
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssuesForMethod: methodName InClass: aClass WhichIsMeta: aBoolean.
	issues do: [ :issue | (issue assignee = self username) ifTrue: [myIssuesForMethod add: issue] ].
	
	^ myIssuesForMethod