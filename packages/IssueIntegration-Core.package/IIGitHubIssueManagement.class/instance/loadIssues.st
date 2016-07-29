issue accessing
loadIssues
	| issues |
	issues := self sendLoadRequestFor: 'issues' onError: [ ^ SortedCollection new ].
	^ (issues collect: [ :issueJson | IIGitHubIssue fromJSON: issueJson ]) asSortedCollection