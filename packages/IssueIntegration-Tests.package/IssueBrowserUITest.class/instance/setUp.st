as yet unclassified
setUp
	super setUp.
	self createMockIssueManagement.
	self wantsToTest: IssueBrowser open.
	self repoList: (self subject findByName: 'repoList').
	self issueList: (self subject findByName: 'issueList')