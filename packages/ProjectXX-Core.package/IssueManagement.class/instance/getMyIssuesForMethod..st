as yet unclassified
getMyIssuesForMethod: methodName
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssues.
	issues do: [ :issue | ((issue assignee = self username) and: [ (issue title includesSubString:'[', methodName, ']') ])
		ifTrue: [myIssuesForMethod add: issue] ].
	

	^ myIssuesForMethod