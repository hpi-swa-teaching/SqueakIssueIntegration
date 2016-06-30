as yet unclassified
createMockIssueManagement
	| issueManagement |
	issueManagement := GitHubIssueIntegration createWithProjectID: GitHubApiServer repoSlug loginKey: 'i-am-not-a-key' username: GitHubApiServer repoOwner.
	issueManagement webClient: GitHubWebClient new.
	IssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.