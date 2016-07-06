user interface signals
assignee
	selectedIssue assignee 
		ifNil: [ ^ assignee
			ifNil: [ '' ]
			ifNotNil: [ assignee ]]
		ifNotNil: [ ^ selectedIssue assignee ]