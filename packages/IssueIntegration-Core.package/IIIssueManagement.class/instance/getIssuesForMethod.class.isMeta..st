issue accessing
getIssuesForMethod: methodName class: aClass isMeta: aBoolean
	| issues issuesForMethod separator |
	separator := ''.
	aBoolean ifTrue: [ separator := self class metaClassIndicator ].
	separator := separator, self class classAndMethodSeparator.
	issuesForMethod := SortedCollection new.
	issues := self getIssues.
	issues do: [ :issue | (issue title includesSubString:'[', aClass, separator, methodName, ']')
		ifTrue: [ issuesForMethod add: issue ]].
	^ issuesForMethod