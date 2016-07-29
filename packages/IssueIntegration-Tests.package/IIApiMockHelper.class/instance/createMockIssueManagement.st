as yet unclassified
createMockIssueManagement
	| issueManagement apiClient |
	issueManagement := IIGitHubIssueManagement createWithProjectID: IIGitHubApiMockServer 
		repoSlug loginKey: IIGitHubApiMockServer oAuthToken 
		andUsername: IIGitHubApiMockServer repoOwner.
	apiClient := IIGitHubApiMockClient new.
	apiClient oAuthToken: IIGitHubApiMockServer oAuthToken.
	issueManagement apiClient: apiClient.
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Tests'.
	^ issueManagement