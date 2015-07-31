user interface signals
createIssue

	| title body assignee |
	
	title := self ui titleLine theText.
	body := self ui descriptionField theText.
	assignee := self ui assigneeLine theText.

	IssueManagement createIssueWithTitle: title body: body method: methodName class: issueClassName isMeta: issueClassIsMeta assignee: assignee package: packageName.

	self close