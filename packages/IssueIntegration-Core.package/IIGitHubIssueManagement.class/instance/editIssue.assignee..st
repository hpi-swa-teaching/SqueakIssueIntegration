issue accessing
editIssue: anIssue assignee: assignee
	| json response |
	json := JsonObject new. 
	json at: 'assignee' put: assignee.
	response := self httpRequestTo: '/repos/', self projectID , '/issues/', anIssue number withMethod: #PATCH andBody: json asJsonString onError: [^self].
	self checkResponse: response shouldBe: 200.
	self invalidateCache.

	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json.