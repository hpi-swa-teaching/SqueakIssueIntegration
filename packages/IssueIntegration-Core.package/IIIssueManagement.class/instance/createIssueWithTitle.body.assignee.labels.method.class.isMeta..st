issue creation
createIssueWithTitle: title body: body assignee: anAssignee labels: labels method: method class: aClass isMeta: aBoolean
	| separator |
	separator := ''.	
	aBoolean ifTrue: [ separator := self class metaClassIndicator ].
	separator := separator, self class classAndMethodSeparator.
	
	method isEmpty ifTrue: [ ^ self createIssueWithTitle: title, ' [', aClass, ']' body: body assignee: anAssignee labels: labels ].
	^ self createIssueWithTitle: title, ' [', aClass, separator, method, ']' body: body assignee: anAssignee labels: labels