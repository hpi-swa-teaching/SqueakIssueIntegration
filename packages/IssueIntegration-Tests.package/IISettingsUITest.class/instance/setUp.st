initialize-release
setUp
	super setUp.
	self createMockIssueManagement.
	self wantsToTest: IISettings open.
	self subject model apiClient: IIGitHubApiMockClient new.  
	self packageList: (self subject findByName: 'packageList')