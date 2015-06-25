issue accessing
getIssues
	| response issuesJson issueSet |

	(self cacheDatetime isNil or: [(DateAndTime totalSeconds -  self cacheDatetime) > 60]) ifTrue: [
		response := WebClient httpGet:'https://api.github.com/repos/', projectURL , '/issues?access_token=', loginKey.
		issueSet := Set new.
		issuesJson := Json readFrom:(response content readStream).
		issuesJson do: [:issueJson | issueSet add:(GitHubIssue createIssueFromJSON: issueJson)].
		self cachedIssues: issueSet.
		self cacheDatetime: DateAndTime totalSeconds.
		^ issueSet 
	] ifFalse: [
		^ self cachedIssues
	]