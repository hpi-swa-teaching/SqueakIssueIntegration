as yet unclassified
handleIssueCreation: aWebRequest
	| newIssue content |
	content := Json readFrom: (ReadStream on: aWebRequest content).
	newIssue := self createIssueJsonWithTitle: (content at: 'title') body: (content at: 'body') andAssignee: (content at: 'assignee').
	self issues add: newIssue.
 	^ aWebRequest send200Response: (Json render: newIssue) contentType: 'application/json' do: [:resp | resp protocol: 'HTTP/1.1' code: 201]