accessing
username
	(IssueManagement getIssueManagementFor: self selectedPackage) username
		ifNil: [^ username]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) username]