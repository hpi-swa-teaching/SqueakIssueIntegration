issue creation
createIssueWithTitle: aTitle body: aBody assignee: anAssignee labels: someLabels method: aMethod class: aClass andIsMeta: aBoolean
	| indicator |
	indicator := self createIndicatorFor: aClass method: aMethod andIsMeta: aBoolean.
	^ self createIssueWithTitle: aTitle, ' ', indicator body: aBody 
		assignee: anAssignee andLabels: someLabels