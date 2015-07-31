user interface signals
save
	| projectURL loginKey username issueManagement | 

	projectURL := self ui projectURLLine theText.
	(projectURL isEmpty) ifTrue: [
		IssueManagement deleteIssueManagementFor:selectedPackage.
	] ifFalse: [
		loginKey := self ui loginKeyLine theText.
		username := self ui usernameLine theText.

		issueManagement := GitHubIssueIntegration new.
		issueManagement projectURL: projectURL.
		issueManagement loginKey: loginKey.
		issueManagement username: username.
		IssueManagement addIssueManagement: issueManagement to: selectedPackage
	].

	self window delete.
	self delete
	