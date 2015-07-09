issue accessing
getMyIssuesForMethod: methodName class: aClass isMeta: aBoolean
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssuesForMethod: methodName class: aClass isMeta: aBoolean.
	issues do: [ :issue | (issue assignee = self username) ifTrue: [myIssuesForMethod add: issue] ].
	
	^ myIssuesForMethod