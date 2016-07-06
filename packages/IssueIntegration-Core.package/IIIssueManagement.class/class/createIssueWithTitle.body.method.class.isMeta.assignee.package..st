issue creation
createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee package: package
	^ (self getIssueManagementFor: package) createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee