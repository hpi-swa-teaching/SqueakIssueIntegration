issue editing
editIssue: anIssue body: body 
	| json response |
	json := JsonObject new. 
	json at: 'body' put: body.
	response := self apiClient apiRequestTo: '/repos/', self projectID , '/issues/', anIssue number 
		withMethod: #PATCH
		andBody: json asJsonString 
		andExpectedCode: 200
		onError: [ ^ anIssue ].
	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json