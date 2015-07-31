issue accessing
getMyIssuesForMethod: methodName class: aClass isMeta: aBoolean
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.
	issues := self getIssuesForMethod: methodName class: aClass isMeta: aBoolean.
	issues do: [ :issue | (self username = issue assignee) ifTrue: [myIssuesForMethod add: issue] ].
	
	^ myIssuesForMethod