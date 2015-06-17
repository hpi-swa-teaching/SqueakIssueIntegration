as yet unclassified
getIssuesForMethod: methodName
	
	| issues issuesForMethod |

	issuesForMethod := Set new.

	issues := self getIssues.	
	issues do: [ :issue | (issue title includesSubString:'[', methodName, ']')
		ifTrue: [ issuesForMethod add: issue] ].

	^ issuesForMethod