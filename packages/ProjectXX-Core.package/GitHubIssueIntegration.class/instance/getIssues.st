as yet unclassified
getIssues
	| response issuesJson issueSet |

	response := WebClient httpGet:'https://api.github.com/repos/', projectURL , '/issues?access_token=', loginKey.

	issueSet := Set new.

	issuesJson := Json readFrom:(response content readStream).
	issuesJson do: [:issueJson | issueSet add:(GitHubIssue createIssueFromJSON: issueJson)].

	^ issueSet.