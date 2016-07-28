issue accessing
loadIssues
	| issues response issuesJson |
	response := self sendLoadIssuesRequestOnError: [ ^ SortedCollection new ].
	issuesJson := Json readFrom: response content readStream. 
	issues := issuesJson collect: [ :issueJson | IIGitHubIssue createIssueFromJSON: issueJson ].
	^ issues asSortedCollection