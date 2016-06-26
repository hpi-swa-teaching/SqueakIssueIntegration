running
setUp
	super setUp.
	self gitHubApiServer: GitHubApiServer start.
	self issueManagement: GitHubIssueIntegration new.
	self issueManagement webClient: GitHubWebClient new.
	self issueManagement projectID: GitHubApiServer repoSlug.