as yet unclassified
createMockIssueManagement
	| issueManagement |
	issueManagement := GitHubIssueIntegration createWithProjectID: IIGitHubApiMock repoSlug loginKey: 'i-am-not-a-key' username: IIGitHubApiMock repoOwner.
	issueManagement webClient: IIMockWebClient new.
	IssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement