as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WithAssignee: anAssignee InPackage: package
	
	^ (self getIssueManagementFor: package) createIssueWithTitle: title AndBody: body  ForMethod: method InClass: aClass WithAssignee: anAssignee