issue creation
createWithProjectID: aProjectID loginKey: aLoginKey andUsername: aUsername
	| issueManagement |
	issueManagement := IIGitHubIssueManagement new.
	issueManagement projectID: aProjectID;
		 loginKey: aLoginKey;
		 username: aUsername;
		 apiClient: (IIGitHubApiClient newWith: aLoginKey).
	^ issueManagement