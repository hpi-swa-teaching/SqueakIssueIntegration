issue creation
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WhichIsMeta: aBoolean WithAssignee: anAssignee
	
	| seperator |

	seperator := self class classAndMethodSeparator.
	aBoolean ifTrue: [ seperator := self class metaClassAndMethodSeparator ].

	^ self createIssueWithTitle: title, ' [', aClass, seperator, method, ']' AndBody:  body AndAssignee: anAssignee
	