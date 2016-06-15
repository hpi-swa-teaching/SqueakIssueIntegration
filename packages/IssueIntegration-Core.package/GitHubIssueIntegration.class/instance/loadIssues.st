issue accessing
loadIssues

	| issueSet loginString response issuesJson |
	issueSet := Set new.
	loginString := '?access_token=', self loginKey.
	response := (self httpGetWithAcceptHeader:  'https://api.github.com/repos/', self projectID , '/issues', loginString) "] on: Error do: [Transcript show: 'loadIssues broke: ', self webClient ; cr.
		^issueSet].".
	self checkResponse: response shouldBe: 200.

	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSet add: (GitHubIssue createIssueFromJSON: issueJson) ].
	
	^ issueSet