issue creation
createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee
	
	| separator |
	separator := ''.

	aBoolean ifTrue: [ separator := separator, self class metaClassIndicator ].
	method isEmpty ifTrue: [ ^ self createIssueWithTitle: title, ' [', aClass, separator, ']' body: body assignee: anAssignee ].
	
	separator := separator, self class classAndMethodSeparator.
	^ self createIssueWithTitle: title, ' [', aClass, separator, method, ']' body:  body assignee: anAssignee
	