as yet unclassified
selectedIssue: anIssue

	selectedIssue := anIssue.
	
	self issueWidgets valuesDo: [ :widget | widget model: self selectedIssue ].
	
	self changed: #selectedIssue.
	self selectedIssue
		changed: #title;
		changed: #body;
		changed: #assignee.
