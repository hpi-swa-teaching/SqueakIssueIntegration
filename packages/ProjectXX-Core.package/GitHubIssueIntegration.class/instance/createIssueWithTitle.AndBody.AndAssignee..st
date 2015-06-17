as yet unclassified
createIssueWithTitle: title AndBody: body AndAssignee: assignee
	| json response |
	
	json := JsonObject new. 
	json at: 'title' put: title;
		 at: 'body' put: body.
	assignee ifNotEmpty: [json at: 'assignee' put: assignee].

	response := WebClient httpPost:'https://api.github.com/repos/', projectURL , '/issues?access_token=', loginKey content:json asJsonString type:'text/html'.

	self cacheDatetime: nil. "Invalidate cache"

	 (response status = 'HTTP/1.1 201 Created') ifTrue: [

		json := Json readFrom:(response content readStream).
		^ GitHubIssue createIssueFromJSON: json.

	] ifFalse: [ ^ nil ]