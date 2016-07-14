issue accessing
loadIssues
	| issueSortedCollection response issuesJson |
	issueSortedCollection := SortedCollection new.
	response := self httpRequestTo: '/repos/', self projectID , '/issues' withMethod: #GET onError: [ ^ issueSortedCollection ].
	self checkResponse: response shouldBe: 200.

	issuesJson := Json readFrom: response content readStream. 
	issuesJson do: [ :issueJson | issueSortedCollection add: (IIGitHubIssue createIssueFromJSON: issueJson) ].
	^ issueSortedCollection