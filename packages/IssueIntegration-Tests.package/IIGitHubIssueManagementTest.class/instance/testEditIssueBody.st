running
testEditIssueBody
	| issue newBody |
	issue := self issueManagement createIssueWithTitle: 'Title' 
		body: 'Body' 
		assignee: 'mee'  
		andLabels: {}.
	newBody := 'New body'.
	issue := self issueManagement editIssue: issue body: newBody.
	self assert: newBody equals: issue body