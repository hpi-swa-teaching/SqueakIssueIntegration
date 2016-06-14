running
setUp
	super setUp.
	GitHubApiServer start.
	self issueManagement: GitHubIssueIntegration new.
	self issueManagement webClient: GitHubWebClient new.
	self issueManagement projectID: GitHubApiServer repoSlug.