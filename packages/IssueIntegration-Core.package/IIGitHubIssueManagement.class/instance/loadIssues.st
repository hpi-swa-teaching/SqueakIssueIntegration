issue accessing
loadIssues
	| issueSortedCollection response issuesJson |
	issueSortedCollection := SortedCollection new.
	response := self apiClient apiRequestTo: '/repos/', self projectID , '/issues' 
		withMethod: #GET
		andExpectedCode: 200
		onError: [ ^ issueSortedCollection ].

	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSortedCollection add: (IIGitHubIssue createIssueFromJSON: issueJson) ].
	^ issueSortedCollection