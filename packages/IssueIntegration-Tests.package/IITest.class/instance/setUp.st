as yet unclassified
setUp
	super setUp.
	self oldRepositoryDictionary: IssueManagement repositoryDictionary.
	IssueManagement repositoryDictionary removeAll.
	GitHubApiServer start.