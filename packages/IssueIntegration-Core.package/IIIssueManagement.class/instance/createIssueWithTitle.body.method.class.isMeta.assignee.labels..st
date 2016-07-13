issue creation
createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee labels: labels
	
	| separator |
	separator := ''.	
	aBoolean ifTrue: [ separator := self class metaClassIndicator ].
	separator := separator, self class classAndMethodSeparator.
	
	method isEmpty ifTrue: [ ^ self createIssueWithTitle: title, ' [', aClass, ']' body: body assignee: anAssignee ].
	^ self createIssueWithTitle: title, ' [', aClass, separator, method, ']' body:  body assignee: anAssignee labels: labels
	