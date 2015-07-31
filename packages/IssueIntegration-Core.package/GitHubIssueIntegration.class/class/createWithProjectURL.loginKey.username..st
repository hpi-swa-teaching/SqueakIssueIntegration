issue creation
createWithProjectURL: aProjectURL loginKey: aLoginKey username: aUsername

	| issueManagement |

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: aProjectURL.
	issueManagement loginKey: aLoginKey.
	issueManagement username: aUsername.