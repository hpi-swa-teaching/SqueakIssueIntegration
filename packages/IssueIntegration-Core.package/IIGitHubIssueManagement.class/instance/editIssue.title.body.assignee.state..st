issue editing
editIssue: anIssue title: title body: body assignee: assignee state: state
	"create a json, fill it with new information given in the method arguments and post it to GitHub"
	"THIS METHOD ISN'T CALLED ANYWHERE ANYMORE!"
	| json response |
	json := JsonObject new. 
	json
		at: 'title' put: title;
		at: 'body' put: body;
		at: 'assignee' put: assignee;
		at: 'state' put: state.
	response := self httpRequestTo: '/repos/', self projectID , '/issues/', anIssue number withMethod: #PATCH andBody: json asJsonString onError: [ ^ IIEmptyIssue new ].
	self checkResponse: response shouldBe: 200.
	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json