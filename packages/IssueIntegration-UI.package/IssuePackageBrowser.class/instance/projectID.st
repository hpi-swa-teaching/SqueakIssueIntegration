accessing
projectID
	(IssueManagement getIssueManagementFor: self selectedPackage) projectID
		ifNil: [^ projectID]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) projectID]