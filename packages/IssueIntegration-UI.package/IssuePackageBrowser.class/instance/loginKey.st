accessing
loginKey
	(IssueManagement getIssueManagementFor: self selectedPackage) loginKey
		ifNil: [^ loginKey 
			ifNil: ['']
			ifNotNil: [loginKey]]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) loginKey]