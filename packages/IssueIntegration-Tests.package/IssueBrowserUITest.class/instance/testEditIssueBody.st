as yet unclassified
testEditIssueBody
	| titleInput newBody |
	newBody := 'Test Body Changed'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	titleInput := self subject findByName: 'issueBody'.
	titleInput setText: newBody.
	self assert: newBody equals: titleInput text string.
	self issueList changeModelSelection: 2.
	self issueList changeModelSelection: 1.
	self assert: newBody equals: titleInput text string.