accessing
selectedIssue: anIssue
	selectedIssue := anIssue.	
	self
		changed: #selectedIssue;
		changed: #title;
		changed: #body;
		changed: #assignee;
		changed: #labels