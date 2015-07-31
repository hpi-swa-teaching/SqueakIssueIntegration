issue creation
createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee
	
	| separator |

	separator := self class classAndMethodSeparator.
	aBoolean ifTrue: [ separator := self class metaClassAndMethodSeparator ].

	^ self createIssueWithTitle: title, ' [', aClass, separator, method, ']' body:  body assignee: anAssignee
	