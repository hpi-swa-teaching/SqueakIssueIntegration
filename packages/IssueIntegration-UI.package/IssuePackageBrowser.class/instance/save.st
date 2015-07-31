user interface signals
save
	| projectURL | 

	projectURL := self ui projectURLLine theText.
	(projectURL isEmpty) ifTrue: [
		IssueManagement deleteIssueManagementFor:selectedPackage.
	] ifFalse: [
		IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectURL: projectURL loginKey: (self ui loginKeyLine theText) username: (self ui usernameLine theText)) to: selectedPackage
	].
	self close