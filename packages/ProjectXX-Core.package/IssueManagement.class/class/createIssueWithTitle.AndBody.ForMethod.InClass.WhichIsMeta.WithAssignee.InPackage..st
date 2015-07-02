issue creation
createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WhichIsMeta: aBoolean WithAssignee: anAssignee InPackage: package
	
	^ (self getIssueManagementFor: package) createIssueWithTitle: title AndBody: body ForMethod: method InClass: aClass WhichIsMeta: aBoolean WithAssignee: anAssignee