as yet unclassified
createIssueWithTitle: title AndBody: body ForMethod: method InMetaClass: aClass WithAssignee: anAssignee InPackage: package
	
	^ (self getIssueManagementFor: package) createIssueWithTitle: title AndBody: body  ForMethod: method InMetaClass: aClass WithAssignee: anAssignee