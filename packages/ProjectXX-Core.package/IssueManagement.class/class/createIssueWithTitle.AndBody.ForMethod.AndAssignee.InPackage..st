as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method AndAssignee: anAssignee InPackage: package
	
	^ (self getIssueManagementFor: package) createIssueWithTitle: title AndBody: body  ForMethod: method AndAssignee: anAssignee