initialize-release
initialize
	self
		apiClient: IIGitHubApiClient new;
		projectID: ''