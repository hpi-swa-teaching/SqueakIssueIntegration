running
testLabelList
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	self assert: (self gitHubApiMock labels collect: [ :label | label name ]) equals: self labelList getList