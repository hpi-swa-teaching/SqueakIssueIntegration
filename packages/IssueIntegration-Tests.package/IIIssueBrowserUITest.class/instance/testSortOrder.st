as yet unclassified
testSortOrder
	self repoList changeModelSelection: 1.
	self assert: self issueList getList notEmpty. 
	self assert: self issueList getList isSorted