issue accessing
loadIssues

	| issueSet loginString response issuesJson |
	issueSet := Set new.
	loginString := '?access_token=', self loginKey.
	response := WebClient httpGet: 'https://api.github.com/repos/', self projectID , '/issues', loginString.
	"[ "self checkResponse: response shouldBe: 200." ] on: Error do: [ ^ issueSet. ]."

	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSet add: (GitHubIssue createIssueFromJSON: issueJson) ].

	^ issueSet