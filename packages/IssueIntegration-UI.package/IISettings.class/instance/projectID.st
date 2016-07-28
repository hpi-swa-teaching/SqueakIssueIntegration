accessing
projectID
	projectID 
		ifNil: [ ^ (IIIssueManagement getIssueManagementFor: self selectedPackage) projectID
			ifNil: ['']
			ifNotNil: [(IIIssueManagement getIssueManagementFor: self selectedPackage) projectID ]]
		ifNotNil: [ ^ projectID ]