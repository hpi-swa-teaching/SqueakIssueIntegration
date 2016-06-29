as yet unclassified
tearDown
	super tearDown.
	IssueManagement repositoryDictionary addAll: oldRepositoryDictionary.
	GitHubApiServer stop.