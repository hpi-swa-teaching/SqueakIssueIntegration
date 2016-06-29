as yet unclassified
tearDown
	super tearDown.
	IssueManagement repositoryDictionary addAll: self oldRepositoryDictionary.
	GitHubApiServer stop