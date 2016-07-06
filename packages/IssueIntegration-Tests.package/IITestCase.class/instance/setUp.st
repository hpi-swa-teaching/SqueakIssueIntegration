as yet unclassified
setUp
	super setUp.
	self oldRepositoryDictionary: IIIssueManagement repositoryDictionary copy.
	IIIssueManagement repositoryDictionary removeAll.
	self gitHubApiMock: IIGitHubApiMock start.