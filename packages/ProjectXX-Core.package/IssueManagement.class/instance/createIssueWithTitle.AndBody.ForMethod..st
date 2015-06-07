as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method
	
	^ self createIssueWithTitle: title, ' [', method, ']' AndBody:  body
	