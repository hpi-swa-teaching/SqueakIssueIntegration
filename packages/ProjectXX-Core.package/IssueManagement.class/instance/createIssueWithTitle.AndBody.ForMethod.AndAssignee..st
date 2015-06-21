as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method AndAssignee: anAssignee
	
	^ self createIssueWithTitle: title, ' [', method, ']' AndBody:  body AndAssignee: anAssignee.
	