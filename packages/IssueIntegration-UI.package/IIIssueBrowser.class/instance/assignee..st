issue accessing
assignee: aText
	self selectedIssue: (self selectedRepo editIssue: self selectedIssue assignee: self assignee).
	self changed: #assignee