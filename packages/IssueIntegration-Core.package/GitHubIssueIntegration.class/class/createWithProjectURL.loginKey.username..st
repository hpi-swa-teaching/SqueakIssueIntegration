issue creation
createWithProjectURL: aProjectURL loginKey: aLoginKey username: aUsername

	| issueManagement |

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: aProjectURL;
		 loginKey: aLoginKey;
		 username: aUsername.

	^ issueManagement