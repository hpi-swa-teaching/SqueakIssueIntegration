running
testRepoList
	self assert: ((self repoList getList collect: [ :repo | repo asString ]) includes: IIGitHubApiMock repoSlug).
	self assert: 0 equals: self repoList getCurrentSelectionIndex. 
	self assert: self issueList getList isEmpty.
	self repoList changeModelSelection: 1.
	self assert: 1 equals: self repoList getCurrentSelectionIndex. 
	self assert: 3 equals: self issueList getList size