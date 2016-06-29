as yet unclassified
setUp
	| issueManagement |
	super setUp.
	issueManagement := GitHubIssueIntegration createWithProjectID: GitHubApiServer repoSlug loginKey: 'i-am-not-a-key' username: GitHubApiServer repoOwner.
	issueManagement webClient: GitHubWebClient new.
	IssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.

	self wantsToTest: IssueBrowser open