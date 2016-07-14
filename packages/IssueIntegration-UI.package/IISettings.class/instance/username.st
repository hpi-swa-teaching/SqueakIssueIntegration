accessing
username
	username 
		ifNil: [ ^ (IIIssueManagement getIssueManagementFor: self selectedPackage) username 			ifNil: ['']
			ifNotNil: [(IIIssueManagement getIssueManagementFor: self selectedPackage) username ]]
		ifNotNil: [ ^ username ]