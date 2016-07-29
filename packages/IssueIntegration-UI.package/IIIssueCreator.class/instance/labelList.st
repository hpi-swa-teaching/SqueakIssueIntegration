initialize-release
labelList
	^ (IIIssueManagement getIssueManagementFor: self packageName) getLabels