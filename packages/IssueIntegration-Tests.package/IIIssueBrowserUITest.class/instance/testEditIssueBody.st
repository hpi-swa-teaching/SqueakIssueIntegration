as yet unclassified
testEditIssueBody
	| bodyInput newBody |
	newBody := 'Test Body Changed'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	bodyInput := self subject findByName: 'issueBody'.
	bodyInput setText: newBody.
	bodyInput acceptTextInModel.
	self assert: newBody equals: bodyInput text string.
	self issueList changeModelSelection: 2.
	self issueList changeModelSelection: 1.
	self assert: newBody equals: bodyInput text string