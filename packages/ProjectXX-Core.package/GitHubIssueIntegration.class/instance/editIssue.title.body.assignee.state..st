issue editing
editIssue: anIssue title: title body: body assignee: assignee state: state
	| json response |
	
	json := JsonObject new. 
	json at: 'title' put: title;
		at: 'body' put: body;
		at: 'assignee' put: assignee;
		at: 'state' put: state.
	
	
	response := WebClient httpPost:'https://api.github.com/repos/', projectURL , '/issues/', anIssue number, '?access_token=', loginKey content:json asJsonString type:'text/html'.

	self cacheDatetime: nil. "Invalidate cache"

	 (response status = 'HTTP/1.1 201 Created') ifTrue: [

		json := Json readFrom:(response content readStream).
		^ GitHubIssue createIssueFromJSON: json.

	] ifFalse: [ ^ nil ]