as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InMetaClass: aClass WithAssignee: anAssignee
	
	^ self createIssueWithTitle: title, ' [', aClass, '>', method, ']' AndBody:  body AndAssignee: anAssignee.
	