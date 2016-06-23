user interface signals
save
	self projectID isEmpty 
		ifTrue: [	IssueManagement deleteIssueManagementFor:selectedPackage.] 
		ifFalse: [self projectID: (self extractProjectIDFrom: self projectID).
			self checkLoginKey: self loginKey.
			IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectID: self projectID 
				loginKey: self loginKey 
				username: (self username)) 
				to: selectedPackage.]