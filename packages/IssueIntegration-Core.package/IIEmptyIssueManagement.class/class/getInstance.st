accessing
getInstance
	^ Instance ifNil: [ Instance := IIEmptyIssueManagement new ]