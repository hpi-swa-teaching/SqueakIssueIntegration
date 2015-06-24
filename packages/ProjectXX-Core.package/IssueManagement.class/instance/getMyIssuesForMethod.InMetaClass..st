as yet unclassified
getMyIssuesForMethod: methodName InMetaClass: aClass
	
	| issues myIssuesForMethod |

	myIssuesForMethod := Set new.

	issues := self getIssues.
	issues do: [ :issue | ((issue assignee = self username) and: [ (issue title includesSubString:'[',  aClass, '>', methodName, ']') ])
		ifTrue: [myIssuesForMethod add: issue] ].
	

	^ myIssuesForMethod