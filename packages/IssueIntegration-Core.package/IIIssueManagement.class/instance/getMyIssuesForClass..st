issue accessing
getMyIssuesForClass: className
	
	| issues myIssuesForClass |

	myIssuesForClass := Set new.
	issues := self getIssuesForClass: className.
	issues do: [ :issue | (self username = issue assignee) ifTrue: [ myIssuesForClass add: issue ]].
	
	^ myIssuesForClass