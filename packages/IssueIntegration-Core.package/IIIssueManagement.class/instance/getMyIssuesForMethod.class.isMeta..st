issue accessing
getMyIssuesForMethod: methodName class: aClass isMeta: aBoolean
	| issues myIssuesForMethod |
	myIssuesForMethod := SortedCollection new.
	issues := self getIssuesForMethod: methodName class: aClass isMeta: aBoolean.
	issues do: [ :issue | (self username = issue assignee) ifTrue: [ myIssuesForMethod add: issue ]].
	^ myIssuesForMethod