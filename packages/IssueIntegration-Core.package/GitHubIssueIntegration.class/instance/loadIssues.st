issue accessing
loadIssues

	| response issuesJson issueSet loginString |
	issueSet := Set new.
	loginString := ''.
	(loginKey = '' asText) ifFalse: [ loginString := '?access_token=', loginKey ].
	response := WebClient httpGet: 'https://api.github.com/repos/', projectURL , '/issues', loginString.
	
	(response code = 200) ifFalse: [ self error "TODO" ].
	
	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSet add: (GitHubIssue createIssueFromJSON: issueJson) ].

	^ issueSet 