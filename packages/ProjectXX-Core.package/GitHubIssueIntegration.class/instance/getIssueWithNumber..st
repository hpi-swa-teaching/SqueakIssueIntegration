as yet unclassified
getIssueWithNumber: aNumber
	| response json |	

	response := WebClient httpGet:'https://api.github.com/repos/', projectURL , '/issues/', aNumber, '?access_token=', loginKey.
	json := Json readFrom:(response content readStream).
	
	^ GitHubIssue createIssueFromJSON: json.