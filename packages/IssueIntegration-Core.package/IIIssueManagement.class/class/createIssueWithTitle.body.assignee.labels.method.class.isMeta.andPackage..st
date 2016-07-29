issue creation
createIssueWithTitle: aTitle body: aBody assignee: anAssignee labels: someLabels method: aMethod class: aClass isMeta: aBoolean andPackage: aPackage
	^ (self getIssueManagementFor: aPackage) createIssueWithTitle: aTitle 
		body: aBody 
		assignee: anAssignee 
		labels: someLabels 
		method: aMethod 
		class: aClass 
		andIsMeta: aBoolean