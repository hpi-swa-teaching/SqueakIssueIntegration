running
testEditIssueAssignee
	| issue newAssignee |
	issue := self issueManagement createIssueWithTitle: 'Title' 
		body: 'Body' 
		assignee: 'youuuuu'  
		andLabels: {}.
	newAssignee := 'New assignee'.
	issue := self issueManagement editIssue: issue assignee: newAssignee.
	self assert: newAssignee equals: issue assignee