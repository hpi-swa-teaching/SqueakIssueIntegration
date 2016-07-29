issue creation
createIssueWithTitle: title body: body assignee: anAssignee labels: labels method: method class: aClass isMeta: aBoolean andPackage: package
	^ (self getIssueManagementFor: package) createIssueWithTitle: title 
		body: body 
		assignee: anAssignee 
		labels: labels 
		method: method 
		class: aClass 
		andIsMeta: aBoolean