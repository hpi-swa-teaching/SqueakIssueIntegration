issue editing
editIssue: anIssue title: title body: body assignee: assignee state: state
	"create a json, fill it with new information given in the method arguments and post it to GitHub"

	| json response |
	json := JsonObject new. 
	json
		at: 'title' put: title;
		at: 'body' put: body;
		at: 'assignee' put: assignee;
		at: 'state' put: state.
	response := WebClient httpPost: 'https://api.github.com/repos/', projectURL , '/issues/', anIssue number, '?access_token=', loginKey content: json asJsonString type: 'text/html'.

	self invalidateCache.

	 (response code = 200) ifFalse: [ self error "TODO" ].

	json := Json readFrom: (response content readStream).
	^ GitHubIssue createIssueFromJSON: json.