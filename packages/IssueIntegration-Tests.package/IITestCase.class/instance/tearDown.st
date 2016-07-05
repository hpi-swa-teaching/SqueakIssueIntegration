as yet unclassified
tearDown
	super tearDown.
	IssueManagement repositoryDictionary removeAll addAll: self oldRepositoryDictionary.
	IIGitHubApiMock stop