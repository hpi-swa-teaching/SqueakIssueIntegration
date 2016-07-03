accessing
username
	username 
		ifNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) username 			ifNil: ['']
			ifNotNil: [(IssueManagement getIssueManagementFor: self selectedPackage) username]]
		ifNotNil: [^ username]