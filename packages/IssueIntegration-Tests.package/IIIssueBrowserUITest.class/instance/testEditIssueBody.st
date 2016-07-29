running
testEditIssueBody
	| bodyInput newBody |
	newBody := 'Test Body Changed'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	bodyInput := self subject findByName: 'bodyInput'.
	bodyInput 
		setText: newBody;
		acceptTextInModel.
	self assert: newBody equals: bodyInput text string.
	self issueList 
		changeModelSelection: 2;
		changeModelSelection: 1.
	self assert: newBody equals: bodyInput text string