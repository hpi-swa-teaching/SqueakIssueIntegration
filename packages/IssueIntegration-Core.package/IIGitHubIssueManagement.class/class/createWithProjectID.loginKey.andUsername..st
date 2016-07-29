issue creation
createWithProjectID: aProjectID loginKey: aLoginKey andUsername: aUsername
	^ IIGitHubIssueManagement new
		projectID: aProjectID;
		 loginKey: aLoginKey;
		 username: aUsername;
		 apiClient: (IIGitHubApiClient newWith: aLoginKey)