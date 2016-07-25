running
testEditIssue
	| issue issues |
	issues := self issueManagement getIssues.
	self assert: 3 equals: issues size.
	issue := self issueManagement editIssue: issues first title: 'new-title' body: 'new-body' assignee: 'new-assignee' state: 'closed'.
	self assert: 'new-title' equals: issue title.
	self assert: 'new-body' equals: issue body.
	self assert: 'new-assignee' equals: issue assignee.
	
	issues := self issueManagement getIssues.
	self assert: 2 equals: issues size.