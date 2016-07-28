functionalities
addIssueFrom: aJson
	| issue |
	self issueNumber: self issueNumber + 1.
	issue := self createIssueJsonWithTitle: (aJson at: 'title') 
		body: (aJson at: 'body') 
		andAssignee: (aJson at: 'assignee').
	self issues add: issue.
 	^ issue