creation
createWithProjectID: aProjectID loginKey: aLoginKey andUsername: aUsername
	^ self new
		projectID: aProjectID;
		loginKey: aLoginKey;
		username: aUsername;
		apiClient: (IIGitHubApiClient newWith: aLoginKey);
		yourself