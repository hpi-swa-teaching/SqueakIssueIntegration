running
testSortOrder
	self repoList changeModelSelection: 1.
	self 
		assert: self issueList getList notEmpty;
		assert: self issueList getList isSorted