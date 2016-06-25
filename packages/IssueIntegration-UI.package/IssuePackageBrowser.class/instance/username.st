accessing
username
	(IssueManagement getIssueManagementFor: self selectedPackage) username
		ifNil: [^ username 
			ifNil: ['']
			ifNotNil: [username]]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) username]