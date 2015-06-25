issue accessing
getIssuesForMethod: methodName InClass: aClass
	
	| issues issuesForMethod |

	issuesForMethod := Set new.

	issues := self getIssues.	
	issues do: [ :issue | (issue title includesSubString:'[', aClass, self class classAndMethodSeparator, methodName, ']')
		ifTrue: [ issuesForMethod add: issue] ].

	^ issuesForMethod