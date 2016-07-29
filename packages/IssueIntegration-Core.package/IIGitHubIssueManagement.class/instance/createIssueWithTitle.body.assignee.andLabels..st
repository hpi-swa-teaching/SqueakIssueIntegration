issue creation
createIssueWithTitle: title body: body assignee: assignee andLabels: labels
	| json response |
	json := JsonObject 
		with: 'title' -> title
		with: 'body' -> body
		with: 'labels' -> labels.
	assignee ifNotEmpty: [ json at: 'assignee' put: assignee ].
	response := self sendCreateIssueRequestWith: json onError: [ ^ IIEmptyIssue new ]. 
	self invalidateCache.
	^ IIGitHubIssue fromResponse: response