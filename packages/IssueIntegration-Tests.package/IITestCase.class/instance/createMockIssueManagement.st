as yet unclassified
createMockIssueManagement
	| issueManagement |
	issueManagement := IIGitHubIssueManagement createWithProjectID: IIGitHubApiMock repoSlug loginKey: 'i-am-not-a-key' username: IIGitHubApiMock repoOwner.
	issueManagement webClient: IIMockWebClient new.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement