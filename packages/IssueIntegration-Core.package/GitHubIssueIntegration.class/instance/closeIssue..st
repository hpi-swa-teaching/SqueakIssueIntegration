issue editing
closeIssue: anIssue
	"Close the issue via a patch request."

	| json response |
	json := JsonObject new. 
	json at: 'state' put: 'closed'.
	self webClient close.
	[response := self webClient httpPatch: 'https://api.github.com/repos/', self projectID , '/issues/', anIssue number, '?access_token=', self loginKey content: json asJsonString type: 'text/html'] on: Error do: [Transcript show: 'closeIssue broke'.
		^self].
	self checkResponse: response shouldBe: 200.

	self invalidateCache.
	
	json := Json readFrom: response content readStream.
	^ GitHubIssue createIssueFromJSON: json.