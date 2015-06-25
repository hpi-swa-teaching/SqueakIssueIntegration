issue creation
createIssueWithTitle: title AndBody: body ForMethod: method InMetaClass: aClass WithAssignee: anAssignee
	
	^ self createIssueWithTitle: title, ' [', aClass, self class metaClassAndMethodSeparator, method, ']' AndBody:  body AndAssignee: anAssignee.
	