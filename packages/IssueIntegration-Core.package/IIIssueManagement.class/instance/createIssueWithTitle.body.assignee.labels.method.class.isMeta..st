issue creation
createIssueWithTitle: title body: body assignee: anAssignee labels: labels method: method class: aClass isMeta: aBoolean
	| separator indicator |
	separator := ''.	
	aBoolean ifTrue: [ separator := self class metaClassIndicator ].
	separator := separator, self class classAndMethodSeparator.
	
	method 
		ifEmpty: [ indicator := '[', aClass, ']' ]
		ifNotEmpty: [ indicator := '[', aClass, separator, method, ']' ].
	^ self createIssueWithTitle: title, ' ', indicator body: body assignee: anAssignee labels: labels