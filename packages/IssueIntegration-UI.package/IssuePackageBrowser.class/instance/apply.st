user interface signals
apply
	self projectID isEmpty 
		ifTrue: [	IssueManagement deleteIssueManagementFor:selectedPackage.] 
		ifFalse: [ self username isEmpty ifTrue: [self error: 'Please insert your username'].
			self projectID: (self extractProjectIDFrom: self projectID).
			self checkLoginKey: self loginKey.
			IssueManagement addIssueManagement: (GitHubIssueIntegration createWithProjectID: self projectID 
				loginKey: self loginKey 
				username: (self username)) 
				to: selectedPackage.]