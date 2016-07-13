issue creation
createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee package: package labels: labels
	^ (self getIssueManagementFor: package) createIssueWithTitle: title body: body method: method class: aClass isMeta: aBoolean assignee: anAssignee labels: labels