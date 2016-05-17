issue accessing
getIssueWithNumber: aNumber

	| response json |
	response := WebClient httpGet:'https://api.github.com/repos/', self projectURL , '/issues/', aNumber, '?access_token=', self loginKey.
	self checkResponse: response shouldBe: 200.
	
	json := Json readFrom: response content readStream.
	
	^ GitHubIssue createIssueFromJSON: json