accessing
loginKey
	loginKey 
		ifNil: [^ (IIIssueManagement getIssueManagementFor: self selectedPackage) loginKey 			ifNil: ['']
			ifNotNil: [(IIIssueManagement getIssueManagementFor: self selectedPackage) loginKey]]
		ifNotNil: [^ loginKey]