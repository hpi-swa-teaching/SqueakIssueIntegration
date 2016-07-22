initialize-release
createMockIssueManagement
	| issueManagement apiClient |
	issueManagement := IIGitHubIssueManagement createWithProjectID: IIGitHubApiMockServer 
		repoSlug loginKey: 'i-am-not-a-key' 
		username: IIGitHubApiMockServer repoOwner.
	apiClient := IIGitHubApiMockClient new.
	apiClient oAuthToken: 'i-am-not-a-key'.
	issueManagement apiClient: apiClient.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement