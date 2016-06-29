as yet unclassified
setUp
	| issueManagement |
	oldRepositoryDictionary := IssueManagement repositoryDictionary.
	IssueManagement repositoryDictionary removeAll.
	GitHubApiServer start.
	
	issueManagement := GitHubIssueIntegration createWithProjectID: GitHubApiServer repoSlug loginKey: 'i-am-not-a-key' username: GitHubApiServer repoOwner.
	issueManagement webClient: GitHubWebClient new.
	IssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.

	self wantsToTest: IssueBrowser open.