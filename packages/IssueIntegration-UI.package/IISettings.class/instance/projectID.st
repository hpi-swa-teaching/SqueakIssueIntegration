accessing
projectID
	projectID 
		ifNil: [^ (IssueManagement getIssueManagementFor: self selectedPackage) projectID 			ifNil: ['']
			ifNotNil: [(IssueManagement getIssueManagementFor: self selectedPackage) projectID]]
		ifNotNil: [^ projectID]