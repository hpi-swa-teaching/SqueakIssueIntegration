issue creation
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WhichIsMeta: aBoolean WithAssignee: anAssignee
	
	| separator |

	separator := self class classAndMethodSeparator.
	aBoolean ifTrue: [ separator := self class metaClassAndMethodSeparator ].

	^ self createIssueWithTitle: title, ' [', aClass, separator, method, ']' AndBody:  body AndAssignee: anAssignee
	