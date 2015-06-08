as yet unclassified
save
	| projectURL loginKey issueManagement | 

	projectURL := self ui projectURLLine theText.
	loginKey := self ui loginKeyLine theText.

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: projectURL.
	issueManagement loginKey: loginKey.

	IssueManagement addIssueManagement: issueManagement  to: selectedPackage