as yet unclassified
handleIssueCreation: aWebRequest
	| newIssue content |
	content := Json readFrom: (ReadStream on: aWebRequest content).
	newIssue := self createIssueJsonWithTitle: (content at: 'title') 
		body: (content at: 'body') 
		andAssignee: (content at: 'assignee').
	self issues add: newIssue.
 	^ aWebRequest sendResponseCode: 201
		content: (Json render: newIssue) 
		type: 'application/json'
		do: self decorateResponseBlock