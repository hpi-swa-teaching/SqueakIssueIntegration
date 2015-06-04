as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InPackage: package
	
	^ self createIssueWithTitle: title, ' [', method, ']' AndBody:  body.
	