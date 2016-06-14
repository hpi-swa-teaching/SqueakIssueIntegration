running
setUp
	| server |
	super setUp.
	server := GitHubApiServer new.
	server start.
	self issueManagement: GitHubIssueIntegration new.
	self issueManagement webServer: GitHubWebClient new.
	self issueManagement projectID: GitHubApiServer repoSlug.