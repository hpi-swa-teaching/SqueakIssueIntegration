running
setUp
	super setUp.
	self mockHelper createMockIssueManagement.
	self wantsToTest: IIIssueBrowser open.
	self repoList: (self subject findByName: 'repoList').
	self issueList: (self subject findByName: 'issueList').
	self labelList: (self subject  findByName: 'labelList')