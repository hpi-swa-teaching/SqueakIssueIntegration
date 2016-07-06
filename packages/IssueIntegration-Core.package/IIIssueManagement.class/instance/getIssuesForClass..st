issue accessing
getIssuesForClass: aClass
	| issues issuesForClass |
	issuesForClass := Set new.
	issues := self getIssues.
	issues do: [ :issue | (issue title includesSubString: '[', aClass, ']')
		ifTrue: [ issuesForClass add: issue ]].

	^ issuesForClass