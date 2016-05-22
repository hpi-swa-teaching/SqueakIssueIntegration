issue creation
createIssueWithTitle: title body: body assignee: assignee
	"create a json, fill it with information given in the arguments and post it on GitHub"

	| json response |
	json := JsonObject new.
	json
		at: 'title' put: title;
		at: 'body' put: body.
	assignee ifNotEmpty: [ json at: 'assignee' put: assignee ].
	response := WebClient httpPost: 'https://api.github.com/repos/', self projectID, '/issues?access_token=', self loginKey content: json asJsonString type: 'text/html'.
	self checkResponse: response shouldBe: 201.

	self invalidateCache.

	json := Json readFrom: response content readStream.
	^ GitHubIssue createIssueFromJSON: json.