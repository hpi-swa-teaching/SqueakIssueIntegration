as yet unclassified
tearDown
	super tearDown.
	IIIssueManagement repositoryDictionary removeAll addAll: self oldRepositoryDictionary.
	IIGitHubApiMock stop