running
setUp
	super setUp.
	self mockHelper createMockIssueManagement.
	self 
		wantsToTest: IIIssueBrowser open;
		repoList: (self subject findByName: 'repoList');
		issueList: (self subject findByName: 'issueList');
		labelList: (self subject findByName: 'labelList')