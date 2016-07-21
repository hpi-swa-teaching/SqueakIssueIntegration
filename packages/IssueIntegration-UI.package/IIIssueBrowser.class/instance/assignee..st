issue accessing
assignee: aText
	self selectedIssue: (self selectedRepo editIssue: self selectedIssue assignee: aText).
	self changed: #assignee