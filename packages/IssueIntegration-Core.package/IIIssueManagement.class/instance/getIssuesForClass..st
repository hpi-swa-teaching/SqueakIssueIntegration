issue accessing
getIssuesForClass: aClass
	| issues issuesForClass |
	issuesForClass := SortedCollection new.
	issues := self getIssues.
	issues do: [ :issue | (issue title includesSubString: '[', aClass, ']')
		ifTrue: [ issuesForClass add: issue ]].
	^ issuesForClass