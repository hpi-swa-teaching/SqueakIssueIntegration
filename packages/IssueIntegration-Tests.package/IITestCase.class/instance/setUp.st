as yet unclassified
setUp
	super setUp.
	self oldRepositoryDictionary: IssueManagement repositoryDictionary copy.
	IssueManagement repositoryDictionary removeAll.
	self gitHubApiMock: IIGitHubApiMock start.