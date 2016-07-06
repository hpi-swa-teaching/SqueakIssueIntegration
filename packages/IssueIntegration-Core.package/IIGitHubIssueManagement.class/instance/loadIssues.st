issue accessing
loadIssues
	| issueSet response issuesJson |
	issueSet := Set new.
	response := self httpRequestTo: '/repos/', self projectID , '/issues' withMethod: #GET onError: [^issueSet].
	self checkResponse: response shouldBe: 200.

	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSet add: (IIGitHubIssue createIssueFromJSON: issueJson) ].
	
	^ issueSet