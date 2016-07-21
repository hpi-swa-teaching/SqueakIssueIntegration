instance variables
testWebClient
	| apiClient |
	apiClient := IIGitHubApiMockClient new.
	self issueManagement apiClient: apiClient.
	self assert: self issueManagement apiClient equals: apiClient
	