issue accessing
loadIssues
	| issues response |
	response := self sendLoadIssuesRequestOnError: [ ^ SortedCollection new ].
	issues := (Json readFrom: response content readStream).
	^ (issues collect: [ :issueJson | IIGitHubIssue fromJSON: issueJson ]) asSortedCollection