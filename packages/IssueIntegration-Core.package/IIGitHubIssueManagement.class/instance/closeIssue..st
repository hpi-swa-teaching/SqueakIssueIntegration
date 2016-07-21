issue editing
closeIssue: anIssue
	"Close the issue via a patch request."
	| json response |
	json := JsonObject new.
	json at: 'state' put: 'closed'.
	response := self apiClient apiRequestTo: '/repos/', self projectID , '/issues/', anIssue number 
		withMethod: #PATCH 
		andBody: json asJsonString 
		andExpectedCode: 200
		onError: [ ^ self ].
	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json