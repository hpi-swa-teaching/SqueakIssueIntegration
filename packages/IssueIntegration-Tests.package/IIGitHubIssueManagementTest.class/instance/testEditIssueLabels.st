running
testEditIssueLabels
	| issue newLabels |
	issue := self issueManagement createIssueWithTitle: 'Title' 
		body: 'Body' 
		assignee: 'youuuuu'  
		andLabels: {}.
	newLabels := { 'Label1' . 'Label2' }.
	issue := self issueManagement editIssue: issue labels: newLabels.
	self assert: newLabels equals: issue labels