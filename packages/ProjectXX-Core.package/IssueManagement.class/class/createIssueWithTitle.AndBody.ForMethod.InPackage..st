as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InPackage: package
	
	^ (self getIssueManagementFor: package) createIssueWithTitle: title AndBody: body  ForMethod: method