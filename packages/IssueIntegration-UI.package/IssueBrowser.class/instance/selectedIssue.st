accessing
selectedIssue	
	^ selectedIssue ifNil: [ selectedIssue := EmptyIssue new ]