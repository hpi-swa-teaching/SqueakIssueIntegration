user interface signals
save
	self projectID isEmpty 
		ifTrue: [	IIIssueManagement deleteIssueManagementFor: self selectedPackage ] 
		ifFalse: [ self projectID: (self extractProjectIDFrom: self projectID).
			self validateInputs.
			IIIssueManagement 
				addIssueManagement: (IIGitHubIssueManagement 
					createWithProjectID: self projectID 
					loginKey: self loginKey 
					username: self username) 
				to: self selectedPackage ]