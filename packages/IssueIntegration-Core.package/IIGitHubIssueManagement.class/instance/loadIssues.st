issue accessing
loadIssues
	| issues |
	issues := self sendLoadRequestFor: 'issues' onError: [ ^ SortedCollection new ].
	^ (issues collect: [ :issueJson | IIGitHubIssue fromJson: issueJson ]) asSortedCollection