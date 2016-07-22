initialize-release
createMockIssueManagement
"Todo: statt MochWeClient MockApiClient"
	| issueManagement apiClient |
	issueManagement := IIGitHubIssueManagement createWithProjectID: IIGitHubApiMock 
		repoSlug loginKey: 'i-am-not-a-key' 
		username: IIGitHubApiMock repoOwner.
	apiClient := IIGitHubApiMockClient new.
	apiClient oAuthToken: 'i-am-not-a-key'.
	issueManagement apiClient: apiClient.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement