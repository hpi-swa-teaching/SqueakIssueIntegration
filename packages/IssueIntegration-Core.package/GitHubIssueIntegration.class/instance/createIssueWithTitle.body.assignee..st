issue creation
createIssueWithTitle: title body: body assignee: assignee
	| json response |
	
	"create a json, fill it with information given in the arguments and post it on GitHub"

	json := JsonObject new. 
	json at: 'title' put: title;
		 at: 'body' put: body.
	assignee ifNotEmpty: [json at: 'assignee' put: assignee].

	response := WebClient httpPost: 'https://api.github.com/repos/', projectURL , '/issues?access_token=', loginKey content: json asJsonString type: 'text/html'.

	self invalidateCache.

	 (response code = 201) ifTrue: [

		json := Json readFrom: (response content readStream).
		^ GitHubIssue createIssueFromJSON: json.

	] ifFalse: [ ^ nil ]