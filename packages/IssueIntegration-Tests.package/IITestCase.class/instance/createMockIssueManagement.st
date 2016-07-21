initialize-release
createMockIssueManagement
"Todo: statt MochWeClient MockApiClient"
	| issueManagement |
	issueManagement := IIGitHubIssueManagement createWithProjectID: IIGitHubApiMock 
		repoSlug loginKey: 'i-am-not-a-key' 
		username: IIGitHubApiMock repoOwner.
	issueManagement apiClient: IIGitHubApiMockClient new.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement