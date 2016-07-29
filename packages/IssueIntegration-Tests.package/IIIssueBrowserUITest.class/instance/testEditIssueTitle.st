running
testEditIssueTitle
	| titleInput newTitle |
	newTitle := 'Test From Test Changed'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	titleInput := self subject findByName: 'titleInput'.
	titleInput 
		setText: newTitle;
		acceptTextInModel.
	self assert: newTitle equals: titleInput text string.
	self issueList 
		changeModelSelection: 2;
		changeModelSelection: 1.
	self assert: newTitle equals: titleInput text string