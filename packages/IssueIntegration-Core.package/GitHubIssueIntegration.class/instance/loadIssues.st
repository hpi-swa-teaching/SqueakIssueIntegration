issue accessing
loadIssues

	| response issuesJson issueSet loginString |

	loginString := ''.
	issueSet := Set new.
	
	(loginKey = '' asText) ifFalse: [loginString := '?access_token=', loginKey ].

	response := WebClient httpGet: 'https://api.github.com/repos/', projectURL , '/issues', loginString.
	
	issuesJson := Json readFrom:(response content readStream).
	issuesJson do: [ :issueJson | issueSet add: (GitHubIssue createIssueFromJSON: issueJson) ].

	^ issueSet 