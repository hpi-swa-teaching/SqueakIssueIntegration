issue creation
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WithAssignee: anAssignee
	
	^ self createIssueWithTitle: title, ' [', aClass, self class classAndMethodSeparator, method, ']' AndBody:  body AndAssignee: anAssignee.
	