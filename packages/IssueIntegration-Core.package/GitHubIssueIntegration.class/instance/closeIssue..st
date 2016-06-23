issue editing
closeIssue: anIssue
	"Close the issue via a patch request."

	| json response |
	json := JsonObject new. 
	json at: 'state' put: 'closed'.
	response := self httpRequestTo: '/repos/', self projectID , '/issues/', anIssue number withMethod: #PATCH andBody: json asJsonString onError: [^self].
	self checkResponse: response shouldBe: 200.

	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ GitHubIssue createIssueFromJSON: json.