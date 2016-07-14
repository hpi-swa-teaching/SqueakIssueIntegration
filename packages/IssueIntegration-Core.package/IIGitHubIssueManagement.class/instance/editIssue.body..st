issue accessing
editIssue: anIssue body: body 
	| json response |
	json := JsonObject new. 
	json at: 'body' put: body.
	response := self httpRequestTo: '/repos/', self projectID , '/issues/', anIssue number withMethod: #PATCH andBody: json asJsonString onError: [ ^ self ].
	self checkResponse: response shouldBe: 200.
	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json