as yet unclassified
save
	| projectURL loginKey username issueManagement | 

	projectURL := self ui projectURLLine theText.
	loginKey := self ui loginKeyLine theText.
	username := self ui usernameLine theText.

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: projectURL.
	issueManagement loginKey: loginKey.
	issueManagement username: username.

	IssueManagement addIssueManagement: issueManagement  to: selectedPackage