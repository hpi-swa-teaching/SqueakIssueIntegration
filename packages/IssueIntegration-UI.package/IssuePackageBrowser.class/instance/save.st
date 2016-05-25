user interface signals
save
	| projectURL | 

	projectURL := self ui projectURLLine theText.
	projectURL isEmpty 
		ifTrue: [	IssueManagement deleteIssueManagementFor:selectedPackage.] 
		ifFalse: [( 'https://github.com/*' match: projectURL asString)
			ifTrue: [projectURL := projectURL copyFrom: 'https://github.com/*' size to: projectURL size.].
	IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectURL: projectURL loginKey: (self ui loginKeyLine theText) username: (self ui usernameLine theText)) to: selectedPackage
	].
	self close