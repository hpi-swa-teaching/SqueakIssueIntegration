issue accessing
getIssuesForClass: aClass isMeta: aBoolean
	
	| issues issuesForClass separator |

	aBoolean ifTrue: [ separator := self class metaClassAndMethodSeparator ].

	issuesForClass := Set new.
	issues := self getIssues.
	issues do: [ :issue | (issue title includesSubString: '[', aClass, separator, ']')
		ifTrue: [ issuesForClass add: issue] ].

	^ issuesForClass