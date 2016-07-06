issue creation
createWithProjectID: aProjectID loginKey: aLoginKey username: aUsername

	| issueManagement |

	issueManagement := IIGitHubIssueManagement new.
	issueManagement projectID: aProjectID;
		 loginKey: aLoginKey;
		 username: aUsername.

	^ issueManagement