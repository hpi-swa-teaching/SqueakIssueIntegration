user interface signals
save
	self projectID isEmpty 
		ifTrue: [	IIIssueManagement deleteIssueManagementFor: self selectedPackage ] 
		ifFalse: [ self username isEmpty ifTrue: [ self error: 'Please insert your username' ].
			self projectID: (self extractProjectIDFrom: self projectID).
			self checkLoginKey: self loginKey.
			IIIssueManagement addIssueManagement: (IIGitHubIssueManagement createWithProjectID: self projectID 
				loginKey: self loginKey 
				username: self username) 
				to: self selectedPackage ]