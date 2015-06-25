issue accessing
getIssuesForMethod: methodName InMetaClass: aClass
	
	| issues issuesForMethod |

	issuesForMethod := Set new.

	issues := self getIssues.	
	issues do: [ :issue | (issue title includesSubString:'[', aClass, self class metaClassAndMethodSeparator, methodName, ']')
		ifTrue: [ issuesForMethod add: issue] ].

	^ issuesForMethod