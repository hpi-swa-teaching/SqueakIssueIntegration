accessing
loginKey
	loginKey 
		ifNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) loginKey 			ifNil: ['']
			ifNotNil: [(IssueManagement getIssueManagementFor: self selectedPackage) loginKey]]
		ifNotNil: [^ loginKey]