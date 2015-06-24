as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WithAssignee: anAssignee
	
	^ self createIssueWithTitle: title, ' [', aClass, '>>', method, ']' AndBody:  body AndAssignee: anAssignee.
	