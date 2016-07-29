running
testIssueList
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 3.
	self 
		assert: 'New Method Issue' equals: (self subject findByName: 'titleInput') text string;
		assert: 'test-user' equals: (self subject findByName: 'assigneeInput') text string;
		assert: 'test body method' equals: (self subject findByName: 'bodyInput') text string