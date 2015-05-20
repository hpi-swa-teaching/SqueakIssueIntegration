as yet unclassified
getIssues
	| response issuesJson issueArray |

	response := WebClient httpGet:'https://api.github.com/repos/', projectURL , '/issues?access_token=', loginKey.

	issueArray := Set new.

	issuesJson := Json readFrom:(response content readStream).
	issuesJson do: [:issueJson | issueArray add:(GitHubIssue createIssueFromJSON: issueJson)].

	^ issueArray.