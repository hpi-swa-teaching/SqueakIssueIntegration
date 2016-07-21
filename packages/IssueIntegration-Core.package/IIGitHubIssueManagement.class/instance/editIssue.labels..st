issue editing
editIssue: anIssue labels: labels
	| json response |
	json := JsonObject new. 
	json at: 'labels' put: labels.
	response := self apiClient apiRequestTo: '/repos/', self projectID , '/issues/', anIssue number 
		withMethod: #PATCH 
		andBody: json asJsonString 
		andExpectedCode: 200
		onError: [ ^ anIssue ].
	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json