running
setUp
	super setUp.
	self mockHelper createMockIssueManagement.
	self wantsToTest: IISettings open.
	self subject model apiClient: IIGitHubApiMockClient new.  
	self packageList: (self subject findByName: 'packageList')