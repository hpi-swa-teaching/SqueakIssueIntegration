issue accessing
getIssues
	| response issuesJson issueSet loginString |

	loginString := ''.
	(self cacheDatetime isNil or: [(DateAndTime totalSeconds -  self cacheDatetime) > 60]) ifTrue: [
		(loginKey = '' asText) 
			ifFalse: [loginString := '?access_token=', loginKey ].
		response := WebClient httpGet:'https://api.github.com/repos/', projectURL , '/issues', loginString.
		issueSet := Set new.
		issuesJson := Json readFrom:(response content readStream).
		issuesJson do: [:issueJson | issueSet add:(GitHubIssue createIssueFromJSON: issueJson)].
		self cachedIssues: issueSet.
		self cacheDatetime: DateAndTime totalSeconds.
		^ issueSet 
	] ifFalse: [
		^ self cachedIssues
	]