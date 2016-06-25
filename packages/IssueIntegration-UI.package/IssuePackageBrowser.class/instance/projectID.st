accessing
projectID
	(IssueManagement getIssueManagementFor: self selectedPackage) projectID
		ifNil: [^ projectID 
			ifNil: ['']
			ifNotNil: [projectID]]
		ifNotNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) projectID]