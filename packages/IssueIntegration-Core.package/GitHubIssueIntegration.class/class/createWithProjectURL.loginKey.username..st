issue creation
createWithProjectURL: aProjectID loginKey: aLoginKey username: aUsername

	| issueManagement |

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectID: aProjectID;
		 loginKey: aLoginKey;
		 username: aUsername.

	^ issueManagement