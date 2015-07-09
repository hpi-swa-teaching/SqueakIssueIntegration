issue accessing
getIssuesForMethod: methodName class: aClass isMeta: aBoolean
	
	| issues issuesForMethod separator |

	separator := self class classAndMethodSeparator.
	aBoolean ifTrue: [ separator := self class metaClassAndMethodSeparator ].

	issuesForMethod := Set new.

	issues := self getIssues.	
	issues do: [ :issue | (issue title includesSubString:'[', aClass, separator, methodName, ']')
		ifTrue: [ issuesForMethod add: issue] ].

	^ issuesForMethod