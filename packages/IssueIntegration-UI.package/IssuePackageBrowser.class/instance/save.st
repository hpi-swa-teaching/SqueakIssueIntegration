user interface signals
save
	| projectID loginKey | 

	projectID := self ui projectIDLine theText.
	loginKey := self ui loginKeyLine theText.
	projectID isEmpty 
		ifTrue: [	IssueManagement deleteIssueManagementFor:selectedPackage.] 
		ifFalse: [projectID := self extractProjectIDFrom: projectID.
			self checkLoginKey: loginKey.
			IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectID: projectID 
				loginKey: loginKey 
				username: (self ui usernameLine theText)) 
				to: selectedPackage.
		].
	self close