issue accessing
editIssue: anIssue title: title
	| json response |
	json := JsonObject new. 
	json at: 'title' put: title.
	response := self httpRequestTo: '/repos/', self projectID , '/issues/', anIssue number withMethod: #PATCH andBody: json asJsonString onError: [^self].
	self checkResponse: response shouldBe: 200.

	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ GitHubIssue createIssueFromJSON: json.