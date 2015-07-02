user interface signals
createIssue

	| title body assignee |
	
	title := self ui titleLine theText.
	body := self ui descriptionField theText.
	assignee := self ui assigneeLine theText.

	IssueManagement createIssueWithTitle: title AndBody: body ForMethod: methodName InClass: issueClassName WhichIsMeta: issueClassIsMeta WithAssignee: assignee InPackage: packageName.

	self window delete.
	self delete