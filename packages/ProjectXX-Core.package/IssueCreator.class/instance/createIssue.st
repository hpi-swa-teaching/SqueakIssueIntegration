user interface signals
createIssue

	| title body assignee |
	
	title := self ui titleLine theText.
	body := self ui descriptionField theText.
	assignee := self ui assigneeLine theText.

	issueClassIsMeta
		ifTrue: [ IssueManagement createIssueWithTitle: title AndBody: body ForMethod: methodName InMetaClass: issueClassName WithAssignee: assignee InPackage: packageName ]
		ifFalse: [ IssueManagement createIssueWithTitle: title AndBody: body ForMethod: methodName InClass: issueClassName WithAssignee: assignee InPackage: packageName ].

	self window delete.
	self delete