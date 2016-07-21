running
testCloseIssue
	| issue issueSet |
	issue := self issueManagement createIssueWithTitle: 'testCloseIssue' body: 'test body' assignee: '' labels: OrderedCollection new.
	self issueManagement closeIssue: issue.
	issueSet := self issueManagement getIssues.
	
	self assert: (issueSet anySatisfy: [ :i | i number = issue number ]) not