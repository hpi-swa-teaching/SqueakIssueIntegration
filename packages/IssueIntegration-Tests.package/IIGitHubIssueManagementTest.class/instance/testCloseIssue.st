running
testCloseIssue
	| issue issueSet |
	issue := self issueManagement createIssueWithTitle: 'testCloseIssue' body: 'test body' assignee: '' andLabels: OrderedCollection new.
	self issueManagement closeIssue: issue.
	issueSet := self issueManagement getIssues.
	
	self assert: (issueSet noneSatisfy: [ :i | i number = issue number ])