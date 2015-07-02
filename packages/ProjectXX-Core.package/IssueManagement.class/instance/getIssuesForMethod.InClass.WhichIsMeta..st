issue accessing
getIssuesForMethod: methodName InClass: aClass WhichIsMeta: aBoolean
	
	| issues issuesForMethod seperator |

	seperator := self class classAndMethodSeparator.
	aBoolean ifTrue: [ seperator := self class metaClassAndMethodSeparator ].

	issuesForMethod := Set new.

	issues := self getIssues.	
	issues do: [ :issue | (issue title includesSubString:'[', aClass, seperator, methodName, ']')
		ifTrue: [ issuesForMethod add: issue] ].

	^ issuesForMethod