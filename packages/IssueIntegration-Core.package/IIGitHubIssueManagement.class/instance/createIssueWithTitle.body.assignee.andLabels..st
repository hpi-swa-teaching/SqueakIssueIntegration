issue creation
createIssueWithTitle: aTitle body: aBody assignee: anAssignee andLabels: someLabels
	| json response |
	json := JsonObject with: 'title' -> aTitle
		with: 'body' -> aBody
		with: 'labels' -> someLabels.
	anAssignee ifNotEmpty: [ json at: 'assignee' put: anAssignee ].
	response := self sendCreateIssueRequestWith: json onError: [ ^ IIEmptyIssue new ]. 
	self invalidateCache.
	^ IIGitHubIssue fromResponse: response