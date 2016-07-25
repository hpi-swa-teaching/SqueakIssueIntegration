running
testCloseIssue
	self repoList changeModelSelection: 1.
	self assert: 3 equals: self issueList getList size.
	self issueList changeModelSelection: 3.
	self subject model closeIssue.
	self assert: 2 equals: self issueList getList size.