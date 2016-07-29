functionalities
addIssueFrom: aJson
	| issue |
	self issueNumber: self issueNumber + 1.
	issue := self createIssueJsonWithTitle: aJson title 
		body: aJson body
		andAssignee: aJson assignee.
	self issues add: issue.
	^ issue