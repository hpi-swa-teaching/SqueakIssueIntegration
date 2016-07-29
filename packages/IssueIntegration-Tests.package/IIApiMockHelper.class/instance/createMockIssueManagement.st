creating
createMockIssueManagement
	| issueManagement apiClient |
	apiClient := IIGitHubApiMockClient new
		oAuthToken: IIGitHubApiMockServer oAuthToken;
		yourself.
	issueManagement := IIGitHubIssueManagement 
		createWithProjectID: IIGitHubApiMockServer repoSlug 
		loginKey: IIGitHubApiMockServer oAuthToken 
		andUsername: IIGitHubApiMockServer repoOwner.
	issueManagement apiClient: apiClient.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement