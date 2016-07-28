issue editing
editIssue: anIssue withProperty: aProperty andValue: aValue
	| json response |
	json := JsonObject with: aProperty -> aValue.
	response := self sendEditIssue: anIssue requestWith: json 	onError: [ ^ anIssue ].
	self invalidateCache.
	^ IIGitHubIssue createIssueFromResponse: response