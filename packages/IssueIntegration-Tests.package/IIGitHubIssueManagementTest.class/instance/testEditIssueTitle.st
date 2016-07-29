running
testEditIssueTitle
	| issue newTitle |
	issue := self issueManagement createIssueWithTitle: 'Title' 
		body: 'Body' 
		assignee: 'mee'  
		andLabels: {}.
	newTitle := 'New title'.
	issue := self issueManagement editIssue: issue title: newTitle.
	self assert: newTitle equals: issue title