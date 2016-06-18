accessing
loginKey
	(IssueManagement getIssueManagementFor: self selectedPackage) loginKey
		ifNil: [^ loginKey]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) loginKey]