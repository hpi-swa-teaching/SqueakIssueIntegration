user interface signals
save
	self projectID isEmpty 
		ifTrue: [	IIIssueManagement deleteIssueManagementFor: self selectedPackage ] 
		ifFalse: [ self validateUsername.
			self projectID: (self extractProjectIDFrom: self projectID).
			self validateProjectID.
			self validateLoginKey.
			IIIssueManagement addIssueManagement: (IIGitHubIssueManagement createWithProjectID: self projectID 
				loginKey: self loginKey 
				username: self username) 
				to: self selectedPackage ]