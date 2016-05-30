user interface signals
save
	| projectID | 

	projectID := self ui projectIDLine theText.
	projectID isEmpty 
		ifTrue: [	IssueManagement deleteIssueManagementFor:selectedPackage.] 
		ifFalse: [projectID := self extractProjectIDFrom: projectID.
			IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectID: projectID loginKey: (self ui loginKeyLine theText) username: (self ui usernameLine theText)) to: selectedPackage.
		].
	self close