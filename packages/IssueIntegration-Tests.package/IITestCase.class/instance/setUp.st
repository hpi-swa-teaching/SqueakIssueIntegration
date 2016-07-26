running
setUp
	super setUp.
	self oldRepositoryDictionary: IIIssueManagement repositoryDictionary copy.
	IIIssueManagement repositoryDictionary removeAll.
	self gitHubApiMock: IIGitHubApiMockServer start