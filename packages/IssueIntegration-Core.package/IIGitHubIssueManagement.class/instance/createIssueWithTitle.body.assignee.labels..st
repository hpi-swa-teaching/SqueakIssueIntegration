issue creation
createIssueWithTitle: title body: body assignee: assignee labels: labels
	"create a json, fill it with information given in the arguments and post it on GitHub"

	| json response |
	json := JsonObject new.
	json
		at: 'title' put: title;
		at: 'body' put: body.
	assignee ifNotEmpty: [ json at: 'assignee' put: assignee ].
	labels ifNotEmpty: [ json at: 'labels' put: labels ].
	Transcript show: 'json asJsonString '.
	response := self httpRequestTo: '/repos/', self projectID, '/issues' withMethod: #POST andBody: json asJsonString onError: [^ IIEmptyIssue new].
	self checkResponse: response shouldBe: 201.

	self invalidateCache.

	json := Json readFrom: response content readStream.
	^ IIGitHubIssue createIssueFromJSON: json.