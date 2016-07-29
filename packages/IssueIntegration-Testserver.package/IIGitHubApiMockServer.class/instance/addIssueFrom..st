functionalities
addIssueFrom: aJson
	self issueNumber: self issueNumber + 1.
	^ self issues add: (self createIssueJsonWithTitle: aJson title 
		body: aJson body
		andAssignee: aJson assignee)